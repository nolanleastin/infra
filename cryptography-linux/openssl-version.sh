export OPENSSL_VERSION="openssl-3.1.6"
export OPENSSL_SHA256="5d2be4036b478ef3cb0a854ca9b353072c3a0e26d8a56f8f0ab9fb6ed32d38d7"
# We need a base set of flags because on Windows using MSVC
# enable-ec_nistp_64_gcc_128 doesn't work since there's no 128-bit type
export OPENSSL_BUILD_FLAGS_WINDOWS="no-ssl3 no-ssl3-method no-zlib no-shared no-module no-comp no-dynamic-engine"
export OPENSSL_BUILD_FLAGS="${OPENSSL_BUILD_FLAGS_WINDOWS} enable-ec_nistp_64_gcc_128"
