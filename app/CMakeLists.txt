add_executable(${HUBBLE_EXE} main.cpp)

target_link_libraries(${HUBBLE_EXE} PUBLIC ${HUBBLE_CORE})

set_target_properties(${HUBBLE_EXE} PROPERTIES OUTPUT_NAME hubble RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

if(${ENABLE_WARNINGS})
    target_set_warnings(${HUBBLE_EXE} ${ENABLE_WARNINGS} ${ENABLE_WARNINGS_AS_ERRORS})
endif()
