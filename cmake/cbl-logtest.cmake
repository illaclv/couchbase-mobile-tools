add_executable(cbl-logtest EXCLUDE_FROM_ALL tests/TokenizerTest.cc
     ArgumentTokenizer.cc
     ${LITECORE}LiteCore/tests/LogEncoderTest.cc)
 
 if(APPLE)
     set(CRYPTO_LIB "-framework Security")
 else()
     set(CRYPTO_LIB "mbedcrypto")
 endif()
 
 target_link_libraries(cbl-logtest LiteCoreStatic FleeceStatic Support
     SQLite3_UnicodeSN BLIPStatic CivetWeb ${CRYPTO_LIB} ${PLATFORM_LIBS})
