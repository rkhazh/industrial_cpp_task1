cmake_minimum_required(VERSION 3.0.0)
project(graph_calc)

#set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-fprofile-arcs -ftest-coverage -fPIC -O0")
#SET(CMAKE_CXX_FLAGS  ${CMAKE_CXX_FLAGS} "-fprofile-arcs -ftest-coverage -fPIC -O0 --coverage ")
#SET(CMAKE_EXE_LINKER_FLAGS  ${CMAKE_EXE_LINKER_FLAGS} "-lgcov")

file(GLOB SOURCES calc.cpp)
file(GLOB INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR})

add_library(${PROJECT_NAME} STATIC ${SOURCES})

set(GRAPH_CALC_LIBRARIES ${PROJECT_NAME} PARENT_SCOPE)
set(GRAPH_CALC_INCLUDE_DIRS ${INCLUDE_DIRS} PARENT_SCOPE)

target_include_directories(${PROJECT_NAME} PUBLIC ${SET_GRAPH_INCLUDE_DIRS})
target_link_libraries(${PROJECT_NAME} PUBLIC ${SET_GRAPH_LIBRARIES})
