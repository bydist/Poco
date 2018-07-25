include("${CMAKE_CURRENT_LIST_DIR}/id.cmake")


if(APPLE OR NOT UNIX)

    byd__package__set_component_dependencies(${package}
        COMPONENT
            Crypto
        DEPENDS
            OpenSSL
    )
    byd__package__set_component_dependencies(${package}
        COMPONENT
            NetSSL
        DEPENDS
            OpenSSL
    )

endif()

#byd__package__set_component_dependencies(${package}
#    COMPONENT
#        PDF
#    DEPENDS
#        zlib
#    )

#byd__package__set_component_dependencies(${package}
#    COMPONENT
#        XML
#    DEPENDS
#        expat
#    )
