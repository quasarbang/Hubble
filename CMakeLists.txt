cmake_minimum_required(VERSION 3.27)

project(HUBBLE VERSION 0.0.1 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(ENABLE_WARNINGS "Enable warnings" ON)
option(ENABLE_WARNINGS_AS_ERRORS "Enable warnings as errors" OFF)

set(STB_LIB stb_lib)
set(HUBBLE_CORE hubble_core_lib)
set(HUBBLE_EXE hubble_exe)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(AddGitSubmodule)

if(ENABLE_WARNINGS)
    include(Warnings)
endif()

add_subdirectory(third-party)
add_subdirectory(src)
add_subdirectory(app)
