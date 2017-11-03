set(package Poco)
set(version 1.7.6-unowhy)


byd__package__info(${package}
    MAINTAINER_NAME "David Callu"
    MAINTAINER_EMAIL "callu.david@gmail.com"
    VERSION ${version}-1
    ABI ${version}
    )

byd__package__download_info(${package}
    URL "https://github.com/ledocc/poco/archive/1.7.6-unowhy.tar.gz"
    URL_HASH SHA1=9737ae4b0963fcace85c2e9d1dc2d8b7ecf0e4b2
)
