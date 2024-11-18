# Copy sysroot (LLVM directory: /usr/lib/llvm-18)
docker cp 1d7522c52d7d:/ ../../archive/ubuntu-18.04-amd64.full2

docker cp 7f9b86356afd:/lib/x86_64-linux-gnu/libffi.so.6* ./

cp -r $TOOLS_ROOT/lib/x86_64-linux-gnu/libffi.so* /lib/x86_64-linux-gnu/
cp -r $TOOLS_ROOT/lib/x86_64-linux-gnu/libtinfo.so* /lib/x86_64-linux-gnu/

- libedit.so.2

export TOOLS_ROOT=/usr/local/google/home/yuriit/Projects/sysroot/archive/ubuntu-18.04-amd64.full

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$TOOLS_ROOT/lib/x86_64-linux-gnu

LD_LIBRARY_PATH=/usr/local/google/home/yuriit/Projects/sysroot/archive/ubuntu-18.04-amd64.full/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

clang --version

/lib/x86_64-linux-gnu/
yuriit@yuriit:~/Projects/sysroot/archive/ubuntu-18.04-amd64.full/lib/x86_64-linux-gnu/libtinfo.so.5

cat > /etc/apt/sources.list.d/llvm.list<< EOF
deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic-18 main
deb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic-18 main
EOF

