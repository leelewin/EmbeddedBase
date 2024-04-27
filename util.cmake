function(LINK_LIBRARY_IF_EXIST lib)
    target_link_libraries(${CMAKE_PROJECT_NAME}
        ${lib}
    )
endfunction()
