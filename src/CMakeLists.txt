set(SOURCE_FILES "BlendTransforms.h" "BlendTransforms.cpp" "pluginMain.cpp" ) 

find_package(Maya REQUIRED)

include_directories(${MAYA_INCLUDE_DIR})
link_directories(${MAYA_LIBRARY_DIR})

add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} ${MAYA_LIBRARIES})

MAYA_PLUGIN(${PROJECT_NAME})
install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION plug-ins)

INSTALL_FILES(/scripts ".mel")
INSTALL_FILES(/scripts ".py")
INSTALL_FILES(/scripts ".ui")

file(COPY ${CMAKE_SOURCE_DIR}/prefs DESTINATION ${CMAKE_INSTALL_PREFIX})