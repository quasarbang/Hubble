file(GLOB STB_SOURCES CONFIGURE_DEPENDS stb/*.cpp stb/*.c)

add_library(${STB_LIB} STATIC ${STB_SOURCES})

target_include_directories(${STB_LIB} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
