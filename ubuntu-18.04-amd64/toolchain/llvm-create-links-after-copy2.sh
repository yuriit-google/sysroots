LLVM_ROOT_PATH=`pwd`
LLVM_LIB_PATH=lib
LIBC_VERSION=2.27

# Take all dependencies with help of below command (you are interested in line starts with 'calling fini:')
# LD_DEBUG=libs ./clang --version

cd $LLVM_ROOT_PATH/$LLVM_LIB_PATH/
# libffi.so.6.0.4
#cp /usr/lib/x86_64-linux-gnu/libffi.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH        # copy library file
ln -s ./libffi.so.*.* ./libffi.so.6
ln -s ./libffi.so.*.* ./libffi.so

# libedit.so.2.0.56
#cp /usr/lib/x86_64-linux-gnu/libedit.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libedit.so.*.* ./libedit.so.2

# libtinfo.so.5.9
#cp /lib/x86_64-linux-gnu/libtinfo.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libtinfo.so.*.* ./libtinfo.so.5

# libxml2.so.2.9.4
#cp /usr/lib/x86_64-linux-gnu/libxml2.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libxml2.so.*.* ./libxml2.so.2
ln -s ./libxml2.so.*.* ./libxml2.so

# libz.so.1.2.11
#cp /lib/x86_64-linux-gnu/libz.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libz.so.*.* ./libz.so.1

# libicuuc.so.60.2
#cp /usr/lib/x86_64-linux-gnu/libicuuc.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libicuuc.so.*.* ./libicuuc.so.60
ln -s ./libicuuc.so.*.* ./libicuuc.so

# libicudata.so.60.2
#cp /usr/lib/x86_64-linux-gnu/libicudata.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/
ln -s ./libicudata.so.*.* ./libicudata.so
ln -s ./libicudata.so.*.* ./libicudata.so.60

# libstdc++.so.6.0.25
#cp /usr/lib/x86_64-linux-gnu/libstdc++.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libstdc++.so.*.* ./libstdc++.so.6

# libgcc_s.so.1
#cp /lib/x86_64-linux-gnu/libgcc_s.so* $LLVM_ROOT_PATH/$LLVM_LIB_PATH

# liblzma.so.5.2.2
#cp /lib/x86_64-linux-gnu/liblzma.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./liblzma.so.*.* ./liblzma.so.5
ln -s ./liblzma.so.*.* ./liblzma.so

# libc-2.27.so
#cp /lib/x86_64-linux-gnu/libc-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libc-$LIBC_VERSION.so ./libc.so.6

# libdl-2.27.so
#cp /lib/x86_64-linux-gnu/libdl-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libdl-2.27.so ./libdl.so.2

# libcrypt-2.27.so
#cp /lib/x86_64-linux-gnu/libcrypt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libcrypt-$LIBC_VERSION.so ./libcrypt.so.1

# librt-2.27.so
#cp /lib/x86_64-linux-gnu/librt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./librt-$LIBC_VERSION.so ./librt.so.1

# libm-2.27.so
#cp /lib/x86_64-linux-gnu/libm-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libm-$LIBC_VERSION.so ./libm.so.6

# libpthread-2.27.so
#cp /lib/x86_64-linux-gnu/libpthread-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
ln -s ./libpthread-$LIBC_VERSION.so ./libpthread.so.0

cd $LLVM_ROOT_PATH/lib
ln -s ./libLLVM-18.so.1 ./libLLVM-18.so
ln -s ./libLLVM-18.so.1 ./libLLVM-18.1.0.so.1
ln -s ./libLLVM-18.so.1 ./libLLVM-18.1.0.so