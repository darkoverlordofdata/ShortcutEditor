cmake_minimum_required ( VERSION 3.16 )

# Project
project ( application VERSION 1.0.0 )
set ( VERSION 1.0.0 )
set ( RELEASE_NAME application )
set ( PROJECT_NAME application )
set ( APP_NAME "ShortcutEditor" )
set ( CMAKE_EXPORT_COMPILE_COMMANDS ON )

list ( APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/GNUstep )

find_package ( GNUstep REQUIRED )

link_directories ( ${GNUSTEP_LIBRARY_DIRS} )

include_directories ( AFTER ${GNUSTEP_INCLUDE_DIRS} )

# Application
add_executable(${APP_NAME}  Source/main.m 
                            Source/AppDelegate.m
                            Source/ShortcutEditor.m)
                            
target_link_libraries(${APP_NAME} ${GNUSTEP_LIBRARIES})

add_custom_command ( TARGET ${APP_NAME} PRE_BUILD
                      COMMAND ${CMAKE_COMMAND} -E copy_directory
                        ${CMAKE_SOURCE_DIR}/Resources/ $<TARGET_FILE_DIR:${APP_NAME}>/Resources )

add_custom_command ( TARGET ${APP_NAME} PRE_BUILD
                      COMMAND ${CMAKE_COMMAND} -E copy
                        ${CMAKE_SOURCE_DIR}/${APP_NAME}Info.plist $<TARGET_FILE_DIR:${APP_NAME}>/Resources )

add_custom_command ( TARGET ${APP_NAME} POST_BUILD
                      COMMAND ${CMAKE_COMMAND} -E copy 
                          $<TARGET_FILE_DIR:${APP_NAME}>/compile_commands.json ${CMAKE_SOURCE_DIR}/compile_commands.json )
     
