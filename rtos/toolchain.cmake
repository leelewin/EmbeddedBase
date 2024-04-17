set(CMAKE_SYSTEM_NAME Generic)

# specify cross compilers and tools
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)
set(CMAKE_AR arm-none-eabi-ar)
set(CMAKE_OBJCOPY arm-none-eabi-objcopy)
set(CMAKE_OBJDUMP arm-none-eabi-objdump)
set(SIZE arm-none-eabi-size)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# CFLAGS
set(CMAKE_C_FLAGS "-g -mthumb -fno-builtin -Wall -std=gnu99")

# CXXFLAGS
set(CMAKE_CXX_FLAGS "-g -mthumb -fno-builtin -Wall -std=c++11")

# ASMFLAGS
set(CMAKE_ASM_FLAGS "-g -mthumb")

# LDFLAGS
set(CMAKE_EXE_LINKER_FLAGS "-g")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${CMAKE_SOURCE_DIR}/rtos/boot/stm32f4_default.ld")

# enable_language(ASM)