/*
  Wizard Engine
  Copyright (C) 2023-2024 Zana Domán

  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

use anyhow::{anyhow, Error};
use std::{
    fmt,
    fmt::{Display, Formatter},
    net::SocketAddr,
};
use tokio::{
    io::{split, AsyncReadExt, AsyncWriteExt},
    main,
    net::TcpListener,
    spawn,
    sync::broadcast,
    task::JoinHandle,
    try_join,
};

#[derive(Clone, Debug)]
struct Message {
    sender: SocketAddr,
    content: Vec<u8>,
}

impl Display for Message {
    fn fmt(&self, formatter: &mut Formatter) -> fmt::Result {
        write!(
            formatter,
            "{}: {}",
            self.sender,
            String::from_utf8_lossy(&self.content)
        )
    }
}

#[main]
async fn main() {
    let listener = TcpListener::bind("127.0.0.1:8080").await.unwrap();
    let (transmitter, _) = broadcast::channel::<Message>(100);

    loop {
        let (socket, address) = listener.accept().await.unwrap();
        let (mut reader, mut writer) = split(socket);
        let transmitter = transmitter.clone();

        spawn(async move {
            let mut receiver = transmitter.subscribe();
            let mut buffer = [0; 1024];
            println!("Connected: {}", address);

            let reader_task: JoinHandle<Result<(), Error>> =
                spawn(async move {
                    loop {
                        let message = match reader.read(&mut buffer).await {
                            Ok(0) => {
                                return Err(anyhow!(
                                    "Disconnected: {}",
                                    address
                                ))
                            }
                            Ok(size) => Message {
                                sender: address,
                                content: buffer[0..size].to_vec(),
                            },
                            Err(error) => return Err(anyhow!(error)),
                        };
                        print!("{}", message);
                        if let Err(error) = transmitter.send(message.clone()) {
                            return Err(anyhow!(error));
                        }
                    }
                });

            let writer_task: JoinHandle<Result<(), Error>> =
                spawn(async move {
                    loop {
                        match receiver.recv().await {
                            Ok(message) => {
                                if message.sender != address {
                                    if let Err(error) =
                                        writer.write_all(&message.content).await
                                    {
                                        return Err(anyhow!(error));
                                    }
                                }
                            }
                            Err(error) => return Err(anyhow!(error)),
                        }
                    }
                });

            if let Err(error) = try_join!(reader_task, writer_task) {
                eprintln!("{}", error);
            }
        });
    }
}
