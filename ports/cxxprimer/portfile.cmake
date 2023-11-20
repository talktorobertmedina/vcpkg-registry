vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO talktorobertmedina/CppPrimer
	REF 4cb108fdbeff5aebcbf891120870f28951a775d9
	SHA512 1e2185ac386d98c9822f65bbbcc7e72b3fa0f8a6a84891adb52ff0531ab8af30e4368c1f2848c4d239d23e60b6bad7fbf9f89baa29eb579353cd647c6bb2a1ce
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
