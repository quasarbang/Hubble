# set(CORE_SOURCES Accelerator/*.cpp)
# set(CORE_SOURCES Camera/*.cpp)
# set(CORE_SOURCES Imaging/*.cpp)
# set(CORE_SOURCES Integrator/*.cpp)
# set(CORE_SOURCES Interaction/*.cpp)
# set(CORE_SOURCES Light/*.cpp)
# set(CORE_SOURCES Material/*.cpp)
set(CORE_SOURCES Math/*.cpp)
# set(CORE_SOURCES Primitive/*.cpp)
# set(CORE_SOURCES Sampling/*.cpp)
# set(CORE_SOURCES Spectrum/*.cpp)
# set(CORE_SOURCES Utility/*.cpp)

file(GLOB HUBBLE_CORE_SOURCES CMAKE_CONFIGURE_DEPENDS ${CORE_SOURCES})

add_library(${HUBBLE_CORE} STATIC ${HUBBLE_CORE_SOURCES})

target_link_libraries(${HUBBLE_CORE} PUBLIC ${STB_LIB})

target_include_directories(${HUBBLE_CORE} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
