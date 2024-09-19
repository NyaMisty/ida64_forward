cd '/Applications/IDA Professional 9.0.app/Contents/MacOS'
clang -dynamiclib -target arm64-apple-darwin20.1.0 -o libida64.dylib.arm64 -Wl,-reexport_library,libida.dylib
install_name_tool -change libida.dylib @executable_path/libida.dylib libida64.dylib.arm64
