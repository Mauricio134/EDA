cmake_minimum_required(VERSION 3.0)

project(/Users/mauricioapaza/Desktop/EDA/octree)

find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

add_executable(MyVTKApp octree2.cpp)
target_link_libraries(MyVTKApp ${VTK_LIBRARIES})