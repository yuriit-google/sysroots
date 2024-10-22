
# Run command LD_DEBUG=libs ./clang --version

export TOOLS_ROOT=/usr/local/google/home/yuriit/Projects/sysroot/archive/ubuntu-18.04-amd64.full
sudo cp -r $TOOLS_ROOT/lib/x86_64-linux-gnu/libedit.so* $TOOLS_ROOT/usr/lib/llvm-18/lib/

cp /usr/lib/x86_64-linux-gnu/libffi.so* /usr/lib/llvm-18/lib/
cp /usr/lib/x86_64-linux-gnu/libedit.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/librt.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libtinfo.so* /usr/lib/llvm-18/lib/
cp /usr/lib/x86_64-linux-gnu/libxml2.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libz.so* /usr/lib/llvm-18/lib/
cp /usr/lib/x86_64-linux-gnu/libicuuc.so* /usr/lib/llvm-18/lib/
cp /usr/lib/x86_64-linux-gnu/libstdc++.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libgcc_s.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libm.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/liblzma.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libdl.so* /usr/lib/llvm-18/lib/
cp /lib/x86_64-linux-gnu/libpthread.so* /usr/lib/llvm-18/lib/
cp /usr/lib/x86_64-linux-gnu/libicudata.so* /usr/lib/llvm-18/lib/

# invalid symlink "/usr/local/google/home/yuriit/Projects/sysroot/archive/llvm-18/include/llvm" -> "../../../include/llvm-18/llvm"