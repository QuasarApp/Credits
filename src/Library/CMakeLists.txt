#
# Copyright (C) 2020-2021 QuasarApp.
# Distributed under the lgplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#

cmake_minimum_required(VERSION 3.14)


add_definitions(-DCredits_LIBRARY)


file(GLOB SOURCE_CPP
    "*.cpp" "*.qrc"
    "src/*.cpp" "src/*.qrc"
    "src/Private/*.cpp" "src/Private/*.qrc"
)

set(PUBLIC_INCUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
set(PUBLIC_INCUDE_DIR ${PUBLIC_INCUDE_DIR} "${CMAKE_CURRENT_SOURCE_DIR}/src")
set(PRIVATE_INCUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src/Private")

add_library(${PROJECT_NAME} ${SOURCE_CPP})

target_compile_definitions(${PROJECT_NAME}
  PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(${PROJECT_NAME} PUBLIC Qt${QT_MAJOR_VERSION}::Core Qt${QT_MAJOR_VERSION}::Quick)

target_include_directories(${PROJECT_NAME} PUBLIC ${PUBLIC_INCUDE_DIR})
target_include_directories(${PROJECT_NAME} PRIVATE ${PRIVATE_INCUDE_DIR})

set(LANGS ${CMAKE_CURRENT_SOURCE_DIR}/src/languages/en.ts
          ${CMAKE_CURRENT_SOURCE_DIR}/src/languages/ru.ts
          ${CMAKE_CURRENT_SOURCE_DIR}/src/languages/ja.ts
          ${CMAKE_CURRENT_SOURCE_DIR}/src/languages/tr.ts
          ${CMAKE_CURRENT_SOURCE_DIR}/src/languages/ua.ts)


prepareQM( ${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR} "${LANGS}")

setVersion(0 1 0)

set(QML_IMPORT_PATH "${CMAKE_CURRENT_LIST_DIR}/src" CACHE STRING "Qt Creator extra qml import paths")
message(QML_IMPORT_PATH = ${QML_IMPORT_PATH})
