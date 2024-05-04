include_directories(
    ${PROJECT_SOURCE_DIR}/driver/include/cmsis
    ${PROJECT_SOURCE_DIR}/driver/include/stm32
    ${PROJECT_SOURCE_DIR}/driver/include/core
)

file(GLOB hal_src
    stm32/stm32f4xx_hal_*.c 
    stm32/stm32f4xx_ll_*.c
)

add_library(stm32_driver STATIC
    stm32/system_stm32f4xx.c
    stm32/stm32f4xx_it.c
    stm32/stm32f4xx_hal.c
    ${hal_src}
)

target_sources(stm32_driver PUBLIC
    core/sys.c
    core/delay.c
    core/usart.c
)

# message("${hal_src}")

target_compile_definitions(stm32_driver PUBLIC USE_HAL_DRIVER STM32F405xx)