function(print_include_directories)
    get_property(dirs DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY INCLUDE_DIRECTORIES)
    message(STATUS "all include directories:")
    foreach(dir ${dirs})
        message(STATUS "-   ${dir}")
    endforeach()
endfunction()

function(print_all_linked_libraries target)
    get_target_property(libs ${target} LINK_LIBRARIES)
    message(STATUS "all linked libraries: (against ${target})")
    foreach (lib ${libs})
        message(STATUS "-   ${lib}")
    endforeach()
endfunction()

function(print_all_variables)
    get_cmake_property(vars VARIABLES)
    list(SORT vars)
    message(STATUS "all variables:")
    foreach (var ${vars})
        message(STATUS "-   ${var}=${${var}}")
    endforeach()
endfunction()