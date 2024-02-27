vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO rbarramorales/greetness2
    REF "v${VERSION}"
    SHA512 efcfcc11a551ca19f5cf638bf3e479eaae38109c01ac159f4c3cd2c69b3fab747b9a9078c725ae0eb642b4f069d98f9007434e64ea2a0403799d6e3852866129
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/greetness2)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

#file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
#configure_file("${CMAKE_CURRENT_LIST_DIR}/usage" "${CURRENT_PACKAGES_DIR}/share/${PORT}/usage" COPYONLY)
