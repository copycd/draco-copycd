if (NOT DRACO_CMAKE_TOOLCHAINS_ARMV7_ANDROID_CLANG_LIBSTDCPP_CMAKE_)
set(DRACO_CMAKE_TOOLCHAINS_ARMV7_ANDROID_CLANG_LIBSTDCPP_CMAKE_ 1)

set(CMAKE_SYSTEM_NAME "Linux")

if ("${CROSS}" STREQUAL "")
  # Default the cross compiler prefix to something known to work.
  set(CROSS arm-linux-androideabi-)
endif ()

set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(CMAKE_C_COMPILER ${CROSS}clang)
set(CMAKE_CXX_COMPILER ${CROSS}clang++)
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -pie -static-libstdc++")
set(AS_EXECUTABLE ${CROSS}as)
set(CMAKE_SYSTEM_PROCESSOR "armv7")

endif ()  # DRACO_CMAKE_TOOLCHAINS_ARMV7_ANDROID_CLANG_LIBSTDCPP_CMAKE_