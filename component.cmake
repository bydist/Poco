include("${CMAKE_CURRENT_LIST_DIR}/id.cmake")



byd__package__add_component(${package}
    CppParser
    Crypto
    Data
    Data_MySQL
    Data_ODBC
    Data_SQLite
    JSON
    MongoDB
    Net
    NetSSL
    PageCompiler
    PageCompiler_File2Page
    PDF
    SevenZip
    Util
    XML
    Zip
    )
