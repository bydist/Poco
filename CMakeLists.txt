



function(byd__Poco__set_component_enable package component enable)

    string(TOUPPER ${component} COMPONENT)
    byd__cmake__configure__add_arg(${package} "ENABLE_${COMPONENT}" "${enable}")

endfunction()

function(build package)

    byd__package__split_package_component_name(${package} package_name component_name)
    byd__private__is_empty(component_name is_component_name_empty)

    if(is_component_name_empty)
        cmut_info("[${package_name}] : nothing to build ...")
        return()
    endif()

    byd__package__get_components(${package_name} components)
    list(REMOVE_ITEM components ${component_name})

    foreach(component IN LISTS components)
        byd__Poco__set_component_enable(${package_name} ${component} OFF)
    endforeach()
    byd__Poco__set_component_enable(${package_name} ${component_name} ON)



    if(BUILD_SHARED_LIBS)
        byd__cmake__configure__add_arg(${package} POCO_STATIC OFF)
    else()
        byd__cmake__configure__add_arg(${package} POCO_STATIC ON)
    endif()

    byd__cmake__configure__add_arg(${package} HUNTER_ENABLED OFF)

    if(APPLE)
        byd__fixup_dylib(${package})
    endif()
    byd__cmake__add(${package} SKIP test)


endfunction()



build(${package})
