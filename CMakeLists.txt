# CMake
cmake_minimum_required(VERSION 3.18.4)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

if(NOT ${CMAKE_BINARY_DIR} STREQUAL ${CMAKE_SOURCE_DIR}/build)
    message(FATAL_ERROR "Unsupported directory, CMake will exit.")
endif()

# Project
project(wizard_engine LANGUAGES CXX)

# System
if(NOT ${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows|Android|Emscripten)
    message(FATAL_ERROR "Unsupported system, CMake will exit.")
endif()

# Architecture
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} MATCHES x86_64|aarch64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} MATCHES x86_64|AMD64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} STREQUAL aarch64)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Emscripten)
    if(NOT ${CMAKE_SYSTEM_PROCESSOR} STREQUAL x86)
        message(FATAL_ERROR "Unsupported architecture, CMake will exit.")
    endif()
endif()

# Compiler
if(${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows)
    if(NOT ${CMAKE_CXX_COMPILER_ID} STREQUAL GNU)
        message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
    elseif(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 10.2.1)
        message(FATAL_ERROR "Outdated compiler, CMake will exit.")
    endif()
elseif(${CMAKE_SYSTEM_NAME} MATCHES Android|Emscripten)
    if(NOT ${CMAKE_CXX_COMPILER_ID} STREQUAL Clang)
        message(FATAL_ERROR "Unsupported compiler, CMake will exit.")
    elseif(${CMAKE_CXX_COMPILER_VERSION} VERSION_LESS 17.0.2)
        message(FATAL_ERROR "Outdated compiler, CMake will exit.")
    endif()
endif()

# Headers
include_directories(${CMAKE_SOURCE_DIR}/include/)

# Sources
file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/wizard_engine/*.cpp)
if(${CMAKE_SYSTEM_NAME} STREQUAL Emscripten)
    add_library(${PROJECT_NAME} STATIC ${SOURCES})
else()
    add_library(${PROJECT_NAME} SHARED ${SOURCES})
endif()

# Libraries
if(${CMAKE_SYSTEM_NAME} STREQUAL Linux)
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/${CMAKE_SYSTEM_PROCESSOR}-linux/lib*.so.*)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/x86_64-windows/lib*.dll)
    file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/x86_64-windows/SDL2*.dll)
    file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    file(GLOB LIBRARIES ${CMAKE_SOURCE_DIR}/lib/aarch64-android/libSDL2*.so)
    file(COPY ${LIBRARIES} DESTINATION ${CMAKE_BINARY_DIR})
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Emscripten)
    set(LIBRARIES SDL2 SDL2_image SDL2_mixer SDL2_ttf SDL2_net freetype)
endif()

target_link_libraries(${PROJECT_NAME} ${LIBRARIES})

# Flags
file(READ ${CMAKE_SOURCE_DIR}/compile_flags.txt FLAGS)
string(REPLACE \n \  CMAKE_CXX_FLAGS ${FLAGS})

# Tests
if(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
    set(LINK_OPTIONS -mwindows)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    set(LINK_OPTIONS -Wl,-rpath=./)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL Emscripten)
    set(LINK_OPTIONS -sUSE_SDL=2 -sUSE_SDL_IMAGE=2 -sUSE_SDL_MIXER=2 -sUSE_SDL_TTF=2
        -sUSE_SDL_NET=2 -sUSE_FREETYPE=1 -sASYNCIFY --use-preload-plugins --preload-file
        ./assets --shell-file ${CMAKE_SOURCE_DIR}/skeleton.html)
    set(CMAKE_EXECUTABLE_SUFFIX .html)
endif()

file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/tests/*.cpp)
foreach(SOURCE ${SOURCES})
    get_filename_component(NAME ${SOURCE} NAME_WE)
    add_executable(${NAME} ${SOURCE})
    target_link_libraries(${NAME} ${PROJECT_NAME})
    target_link_options(${NAME} PRIVATE ${LINK_OPTIONS})
endforeach()

# Assets
file(COPY ${CMAKE_SOURCE_DIR}/assets DESTINATION ${CMAKE_BINARY_DIR})

# Test
if(${CMAKE_SYSTEM_NAME} MATCHES Linux|Windows|Emscripten)
    if(DEFINED TEST AND NOT ${TEST} STREQUAL \ )
        if(${CMAKE_SYSTEM_NAME} STREQUAL Emscripten)
            set(TEST_COMMAND emrun ${TEST}${CMAKE_EXECUTABLE_SUFFIX})
        else()
            set(TEST_COMMAND ${TEST}${CMAKE_EXECUTABLE_SUFFIX})
        endif()
        add_custom_command(TARGET ${TEST} POST_BUILD
                           COMMAND ${TEST_COMMAND}
                           WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                           COMMENT "Running test ${TEST}.")
    else()
        message(AUTHOR_WARNING "TEST not defined, skipping test.")
    endif()
endif()
