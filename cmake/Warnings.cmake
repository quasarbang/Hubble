function(target_set_warnings TARGET ENABLE ENABLED_AS_ERRORS)

    if(NOT ${ENABLED})
        message(STATUS "Warnings disabled for: ${TARGET}")
        return()
    endif()

    set(MSVC_WARNINGS /W4 /permissive-)
    set(GCC_WARNINGS -Wall -Wextra -Wpedantic)
    set(CLANG_WARNINGS ${GCC_WARNINGS})

    if(${ENABLED_AS_ERRORS})
        set(MSVC_WARNINGS ${MSVC_WARNINGS} /Wx)
        set(GCC_WARNINGS ${GCC_WARNINGS} -Werror)
        set(CLANG_WARNINGS ${CLANG_WARNINGS} -Werror)
        
    endif()
    
    if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
        set(WARNINGS ${MSVC_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
        set(WARNINGS ${GCC_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "CLANG")
        set(WARNINGS ${CLANG_WARNINGS})
    endif()

    target_compile_options(${TARGET} PRIVATE ${WARNINGS})

    message(STATUS ${WARNINGS})

endfunction(target_set_warnings TARGET ENABLE ENABLED_AS_ERRORS)
