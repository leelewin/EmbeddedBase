cmake_minimum_required(VERSION 3.15)
project(embeddedBase C CXX ASM)

# utility
include(util.cmake)

# config from KCONFIG
#config.cmake

# toolchain
include(rtos/toolchain.cmake)

add_subdirectory(rtos)
add_subdirectory(driver)
# add_subdirectory(middleware)
add_subdirectory(app)
if (BUILD_TESTING)
    add_subdirectory(tests)
endif()
