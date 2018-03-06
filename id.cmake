set(package Poco)
set(version 1.8.1-unowhy)


byd__package__info(${package}
    MAINTAINER_NAME "David Callu"
    MAINTAINER_EMAIL "callu.david@gmail.com"
    VERSION ${version}-2
    ABI ${version}
    )

byd__package__download_info(${package}
    URL "https://github.com/ledocc/poco/archive/${version}.tar.gz"
    URL_HASH SHA1=d4cfde6fb89b70ab375f3b465602fabb503b520f
)
