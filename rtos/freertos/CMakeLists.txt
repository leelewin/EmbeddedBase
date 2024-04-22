include_directories(
    ${PROJECT_SOURCE_DIR}/rtos/include/freertos
)

add_library(rtos STATIC
    event_groups.c
    list.c
    queue.c
    stream_buffer.c
    tasks.c
    timers.c
)

# 特定于硬件
# 多个硬件后续通过宏控制
target_include_directories(rtos PUBLIC
    ${PROJECT_SOURCE_DIR}/rtos/include/freertos/stm32
)

target_sources(rtos PUBLIC stm32/port.c)

# 特定内存分配方法
# 后续通过宏来选择那种方法
target_sources(rtos PUBLIC heap_4.c)

#通过变量来合并
