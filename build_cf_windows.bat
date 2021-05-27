cd windows_cf_build
conan install .
cd ..
cd CoreFoundation
mkdir build 
cd build 
cmake -DCMAKE_BUILD_TYPE=Release -DCF_ENABLE_LIBDISPATCH=NO -DCMAKE_C_COMPILER=%SWIFT_CLANG_CL% -G Ninja ..
ninja