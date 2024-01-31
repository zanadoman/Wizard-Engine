#!/bin/bash

SOURCES=$(find . -name '*.cpp')
LANGUAGE_VERSION="gnu++23"

LINUX_ASSEMBLY_FOLDER="Compiled"
LINUX_COMPILER="g++"
LINUX_WARNINGS="-Werror -Wall -Wextra"
LINUX_LIBRARIES="-LSlayEngine/Libraries/Linux -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
LINUX_EXTRA_FLAGS="-Wl,-rpath=."
LINUX_BUILD_NAME="bin.out"
LINUX_BUILD_FOLDER="Build"
LINUX_RUN_PREFIX=""
LINUX_RUN_SUFFIX=""

WINDOWS_ASSEMBLY_FOLDER=""
WINDOWS_COMPILER="x86_64-w64-mingw32-g++"
WINDOWS_WARNINGS=""
WINDOWS_LIBRARIES="-LSlayEngine/Libraries/Windows -lNeoTypes++ -lSDL2 -lSDL2_image -lSDL2_ttf -lSDL2_mixer"
WINDOWS_EXTRA_FLAGS="-mwindows"
WINDOWS_BUILD_NAME="bin.exe"
WINDOWS_BUILD_FOLDER="Build"
WINDOWS_RUN_PREFIX="wine64"
WINDOWS_RUN_SUFFIX=""

GIT_FILTER="*.cpp"
GIT_ASSEMBLY_FOLDER=${LINUX_ASSEMBLY_FOLDER}
GIT_COMPILER=${LINUX_COMPILER}
GIT_WARNINGS=${LINUX_WARNINGS}
GIT_LIBRARIES=${LINUX_LIBRARIES}
GIT_EXTRA_FLAGS=${LINUX_EXTRA_FLAGS}
GIT_BUILD_NAME=${LINUX_BUILD_NAME}
GIT_BUILD_FOLDER=${LINUX_BUILD_FOLDER}
GIT_RUN_PREFIX=${LINUX_RUN_PREFIX}
GIT_RUN_SUFFIX=${LINUX_RUN_SUFFIX}

GREEN="\e[92m"
RED="\e[91m"
YELLOW="\e[93m"
BLUE="\e[94m"
MAGENTA="\e[95m"
ENDCOLOR="\e[0m"

if [[ -n $1 && $1 == "-l" ]] || [[ -n $1 && $1 == "--linux" ]]
then
    ls ${LINUX_ASSEMBLY_FOLDER} &> /dev/null || mkdir ${LINUX_ASSEMBLY_FOLDER}
    ls ${LINUX_BUILD_FOLDER} &> /dev/null || mkdir ${LINUX_BUILD_FOLDER}

    if ${LINUX_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${LINUX_EXTRA_FLAGS} ${LINUX_WARNINGS} -S ${SOURCES}
    then
        echo -e "${YELLOW}Linux ${GREEN}compilation successful!${ENDCOLOR}"
        rm ${LINUX_ASSEMBLY_FOLDER}/*.s &> /dev/null
        mv *.s ${LINUX_ASSEMBLY_FOLDER} || exit 1
        rm *.s &> /dev/null
    else
        echo -e "${YELLOW}Linux ${RED}compilation failed!${ENDCOLOR}"
        exit 1
    fi

    if ${LINUX_COMPILER} -o ${LINUX_BUILD_FOLDER}/${LINUX_BUILD_NAME} ${LINUX_ASSEMBLY_FOLDER}/*.s ${LINUX_LIBRARIES} -lm
    then
        echo -e "${YELLOW}Linux ${GREEN}linking successful!${ENDCOLOR}"
    else
        echo -e "${YELLOW}Linux ${RED}linking failed!${ENDCOLOR}"
        exit 1
    fi

    if cd ${LINUX_BUILD_FOLDER} && ${LINUX_RUN_PREFIX} ./${LINUX_BUILD_NAME} ${LINUX_RUN_SUFFIX}
    then
        echo -e "${YELLOW}Linux ${GREEN}run successful!${ENDCOLOR}"
        exit 0
    else
        echo -e "${YELLOW}Linux ${RED}run failed!${ENDCOLOR}"
        exit 1
    fi
fi

if [[ -n $1 && $1 == "-w" ]] || [[ -n $1 && $1 == "--windows" ]]
then
    ls ${WINDOWS_ASSEMBLY_FOLDER} &> /dev/null || mkdir ${WINDOWS_ASSEMBLY_FOLDER}
    ls ${WINDOWS_BUILD_FOLDER} &> /dev/null || mkdir ${WINDOWS_BUILD_FOLDER}

    if ${WINDOWS_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${WINDOWS_EXTRA_FLAGS} ${WINDOWS_WARNINGS} -S ${SOURCES}
    then
        echo -e "${BLUE}Windows ${GREEN}compilation successful!${ENDCOLOR}"
        rm ${WINDOWS_ASSEMBLY_FOLDER}/*.s &> /dev/null
        mv *.s ${WINDOWS_ASSEMBLY_FOLDER} || exit 1
        rm *.s &> /dev/null
    else
        echo -e "${BLUE}Windows ${RED}compilation failed!${ENDCOLOR}"
        exit 1
    fi

    if ${WINDOWS_COMPILER} -o ${WINDOWS_BUILD_FOLDER}/${WINDOWS_BUILD_NAME} ${WINDOWS_ASSEMBLY_FOLDER}/*.s ${WINDOWS_LIBRARIES} -lm
    then
        echo -e "${BLUE}Windows ${GREEN}linking successful!${ENDCOLOR}"
    else
        echo -e "${BLUE}Windows ${RED}linking failed!${ENDCOLOR}"
        exit 1
    fi

    if cd ${WINDOWS_BUILD_FOLDER} && ${WINDOWS_RUN_PREFIX} ./${WINDOWS_BUILD_NAME} ${WINDOWS_RUN_SUFFIX}
    then
        echo -e "${BLUE}Windows ${GREEN}run successful!${ENDCOLOR}"
        exit 0
    else
        echo -e "${BLUE}Windows ${RED}run failed!${ENDCOLOR}"
        exit 1
    fi
fi

if [[ -n $1 && $1 == "-g" ]] || [[ -n $1 && $1 == "--git" ]]
then
    ls ${GIT_ASSEMBLY_FOLDER} &> /dev/null || mkdir ${GIT_ASSEMBLY_FOLDER}
    ls ${GIT_BUILD_FOLDER} &> /dev/null || mkdir ${GIT_BUILD_FOLDER}

    if ${GIT_COMPILER} -m64 -std=${LANGUAGE_VERSION} -O3 ${GIT_EXTRA_FLAGS} ${GIT_WARNINGS} -S $(find $(git diff --name-only) -name ${GIT_FILTER})
    then
        echo -e "${MAGENTA}Git ${GREEN}compilation successful!${ENDCOLOR}"
        mv *.s ${GIT_ASSEMBLY_FOLDER} || exit 1
        rm *.s &> /dev/null
    else
        echo -e "${MAGENTA}Git ${RED}compilation failed!${ENDCOLOR}"
        exit 1
    fi

    if ${GIT_COMPILER} -o ${GIT_BUILD_FOLDER}/${GIT_BUILD_NAME} ${GIT_ASSEMBLY_FOLDER}/*.s ${GIT_LIBRARIES} -lm
    then
        echo -e "${MAGENTA}Git ${GREEN}linking successful!${ENDCOLOR}"
    else
        echo -e "${MAGENTA}Git ${RED}linking failed!${ENDCOLOR}"
        exit 1
    fi

    if cd ${GIT_BUILD_FOLDER} && ${GIT_RUN_PREFIX} ./${GIT_BUILD_NAME} ${GIT_RUN_SUFFIX}
    then
        echo -e "${MAGENTA}Git ${GREEN}run successful!${ENDCOLOR}"
        exit 0
    else
        echo -e "${MAGENTA}Git ${RED}run failed!${ENDCOLOR}"
        exit 1
    fi
fi