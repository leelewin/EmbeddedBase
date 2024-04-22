include_directories(
    ${PROJECT_SOURCE_DIR}/driver/include/cmsis
    ${PROJECT_SOURCE_DIR}/driver/include/stm32
)

file(GLOB hal_src stm32f4xx_hal_*.c stm32f4xx_ll_*.c)

# message("${hal_src}")

add_library(stm32_driver STATIC
    system_stm32f4xx.c
    stm32f4xx_it.c
    stm32f4xx_hal.c
    ${hal_src}
)

target_compile_definitions(stm32_driver PUBLIC USE_HAL_DRIVER STM32F405xx)
