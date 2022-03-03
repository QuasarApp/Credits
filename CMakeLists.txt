#
# Copyright (C) 2020-2022 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

cmake_minimum_required(VERSION 3.14)
project(Credits)
if(TARGET ${PROJECT_NAME})
  message("The ${PROJECT_NAME} arledy included in main Project")
  return()
endif()

if ( NOT DEFINED CREDITS_EXAMPLES )
    set(CREDITS_EXAMPLES ON)

    if (DEFINED TARGET_PLATFORM_TOOLCHAIN)
        if (${TARGET_PLATFORM_TOOLCHAIN} STREQUAL "wasm32")
            set(CREDITS_EXAMPLES OFF)
        endif()
    endif()

    if (ANDROID OR IOS)
        set(CREDITS_EXAMPLES OFF)
    endif()
endif()

if ( NOT DEFINED CREDITS_TESTS )
    set(CREDITS_TESTS ON)

    if (DEFINED TARGET_PLATFORM_TOOLCHAIN)
        if (${TARGET_PLATFORM_TOOLCHAIN} STREQUAL "wasm32")
            set(CREDITS_TESTS OFF)
        endif()
    endif()

    if (ANDROID OR IOS)
        set(CREDITS_TESTS OFF)
    endif()
endif()

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick QuickControls2 REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick QuickControls2 REQUIRED)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(CMake/QuasarApp.cmake)
include(CMake/Version.cmake)

# Add sub directories

add_subdirectory(src/Library)
if (${CREDITS_EXAMPLES})
    add_subdirectory(src/Example)
endif()

if (${CREDITS_TESTS})
    add_subdirectory(tests)
endif()


initAll()
make_directory("${CMAKE_CURRENT_SOURCE_DIR}/Distro")
addDoc(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/doxygen.conf)
