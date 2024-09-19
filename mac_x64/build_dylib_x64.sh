cd '/Applications/IDA Professional 9.0.app/Contents/MacOS'
clang -dynamiclib -target x86_64-apple-darwin-macho -o libida64.dylib.x86_64 -Wl,-reexport_library,libida.dylib
install_name_tool -change libida.dylib @executable_path/libida.dylib libida64.dylib.x86_64
