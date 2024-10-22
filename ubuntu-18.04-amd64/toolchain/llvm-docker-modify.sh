!#/bin/bash

LLVM_ROOT_PATH=/usr/lib/llvm-18
LLVM_LIB_PATH=lib
LIBC_VERSION=2.27

#mkdir $LLVM_ROOT_PATH/lib/x86_64-linux-gnu
# Take all dependencies with help of below command (you are interested in line starts with 'calling fini:')
# LD_DEBUG=libs ./clang --version

# libffi.so.6.0.4
cp /usr/lib/x86_64-linux-gnu/libffi.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libffi.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libffi.so.6
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libffi.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libffi.so

# libedit.so.2.0.56
cp /usr/lib/x86_64-linux-gnu/libedit.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libedit.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libedit.so.2

# libtinfo.so.5.9
cp /lib/x86_64-linux-gnu/libtinfo.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libtinfo.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libtinfo.so.5

# libxml2.so.2.9.4
cp /usr/lib/x86_64-linux-gnu/libxml2.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libxml2.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libxml2.so.2
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libxml2.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libxml2.so

# libz.so.1.2.11
cp /lib/x86_64-linux-gnu/libz.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libz.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libz.so.1

# libicuuc.so.60.2
cp /usr/lib/x86_64-linux-gnu/libicuuc.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicuuc.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicuuc.so.60
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicuuc.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicuuc.so

# libicudata.so.60.2
cp /usr/lib/x86_64-linux-gnu/libicudata.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicudata.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicudata.so
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicudata.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libicudata.so.60

# libstdc++.so.6.0.25
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libstdc++.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libstdc++.so.6

# libgcc_s.so.1
cp /lib/x86_64-linux-gnu/libgcc_s.so* $LLVM_ROOT_PATH/$LLVM_LIB_PATH

# liblzma.so.5.2.2
cp /lib/x86_64-linux-gnu/liblzma.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/liblzma.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/liblzma.so.5
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/liblzma.so.*.* $LLVM_ROOT_PATH/$LLVM_LIB_PATH/liblzma.so

# libc-2.27.so
cp /lib/x86_64-linux-gnu/libc-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libc-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libc.so.6

# libdl-2.27.so
cp /lib/x86_64-linux-gnu/libdl-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libdl-2.27.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libdl.so.2

# libcrypt-2.27.so
cp /lib/x86_64-linux-gnu/libcrypt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s /lib/x86_64-linux-gnu/libcrypt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libcrypt.so.1

# librt-2.27.so
cp /lib/x86_64-linux-gnu/librt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s /lib/x86_64-linux-gnu/librt-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/librt.so.1

# libm-2.27.so
cp /lib/x86_64-linux-gnu/libm-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libm-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libm.so.6

# libpthread-2.27.so
cp /lib/x86_64-linux-gnu/libpthread-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH
#ln -s $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libpthread-$LIBC_VERSION.so $LLVM_ROOT_PATH/$LLVM_LIB_PATH/libpthread.so.0

rm $LLVM_ROOT_PATH/lib/libLLVM.so
rm $LLVM_ROOT_PATH/lib/libLLVM-18.so
rm $LLVM_ROOT_PATH/lib/libLLVM-18.so.1
rm $LLVM_ROOT_PATH/lib/libLLVM-18.1.0.so.1
rm $LLVM_ROOT_PATH/lib/libLLVM-18.1.0.so

rm $LLVM_ROOT_PATH/lib/libclang-18.so.1
rm $LLVM_ROOT_PATH/lib/libclang-18.so.18
rm $LLVM_ROOT_PATH/lib/libclang.so.1
rm $LLVM_ROOT_PATH/lib/liblldb.so.1

cp /usr/lib/x86_64-linux-gnu/libLLVM-18.so.1 $LLVM_ROOT_PATH/lib/
cp /usr/lib/x86_64-linux-gnu/libclang-18.so.18 $LLVM_ROOT_PATH/lib/
cp /usr/lib/x86_64-linux-gnu/liblldb-18.so.1 $LLVM_ROOT_PATH/lib/

# Fix error:
# invalid symlink "/usr/local/google/home/.../Projects/sysroot/archive/llvm-18/include/llvm" -> "../../../include/llvm-18/llvm"
rm $LLVM_ROOT_PATH/include/llvm
rm $LLVM_ROOT_PATH/include/llvm-c
cp -r /usr/include/llvm-18/llvm $LLVM_ROOT_PATH/include/
cp -r /usr/include/llvm-c-18/llvm-c $LLVM_ROOT_PATH/include/

#####################################################################################################################

cd $LLVM_ROOT_PATH/$LLVM_LIB_PATH/
# libffi.so.6.0.4
ln -s ./libffi.so.*.* ./libffi.so.6
ln -s ./libffi.so.*.* ./libffi.so

# libedit.so.2.0.56
ln -s ./libedit.so.*.* ./libedit.so.2

# libtinfo.so.5.9
ln -s ./libtinfo.so.*.* ./libtinfo.so.5

# libxml2.so.2.9.4
ln -s ./libxml2.so.*.* ./libxml2.so.2
ln -s ./libxml2.so.*.* ./libxml2.so

# libz.so.1.2.11
ln -s ./libz.so.*.* ./libz.so.1

# libicuuc.so.60.2
ln -s ./libicuuc.so.*.* ./libicuuc.so.60
ln -s ./libicuuc.so.*.* ./libicuuc.so

# libicudata.so.60.2
ln -s ./libicudata.so.*.* ./libicudata.so
ln -s ./libicudata.so.*.* ./libicudata.so.60

# libstdc++.so.6.0.25
ln -s ./libstdc++.so.*.* ./libstdc++.so.6

# liblzma.so.5.2.2
ln -s ./liblzma.so.*.* ./liblzma.so.5
ln -s ./liblzma.so.*.* ./liblzma.so

# libc-2.27.so
ln -s ./libc-$LIBC_VERSION.so ./libc.so.6

# libdl-2.27.so
ln -s ./libdl-2.27.so ./libdl.so.2

# libcrypt-2.27.so
ln -s ./libcrypt-$LIBC_VERSION.so ./libcrypt.so.1

# librt-2.27.so
ln -s ./librt-$LIBC_VERSION.so ./librt.so.1

# libm-2.27.so
ln -s ./libm-$LIBC_VERSION.so ./libm.so.6

# libpthread-2.27.so
ln -s ./libpthread-$LIBC_VERSION.so ./libpthread.so.0

cd $LLVM_ROOT_PATH/lib
ln -s ./libLLVM-18.so.1 ./libLLVM-18.so
ln -s ./libLLVM-18.so.1 ./libLLVM-18.1.0.so.1
ln -s ./libLLVM-18.so.1 ./libLLVM-18.1.0.so
ln -s ./libLLVM-18.so ./libLLVM.so

ln -s ./libclang-18.so.18 ./libclang-18.so.1
ln -s ./libclang-18.so.18 ./libclang.so.1
ln -s ./liblldb-18.so.1 ./liblldb.so.1

# Copy LLVM directory
# docker cp my-container:/usr/lib/llvm-18 .