!#/bin/bash
DOCKER_CONTAINER_ID=5fef9deab4af
sudo docker cp $DOCKER_CONTAINER_ID:/usr/lib/llvm-18 ./

#mkdir -p ./usr/lib
#sudo docker cp $DOCKER_CONTAINER_ID:/usr/lib/llvm-18 ./usr/lib/

SDK_ROOT=/tmp/ubuntu-18.04-amd64.full4
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$SDK_ROOT/usr/lib/llvm-18/lib/x86_64-linux-gnu:$SDK_ROOT/usr/lib/x86_64-linux-gnu

#ld.lld: error: cannot open Scrt1.o: No such file or directory
#ld.lld: error: cannot open crti.o: No such file or directory
#ld.lld: error: cannot open crtbeginS.o: No such file or directory
#ld.lld: error: unable to find library -lstdc++
#ld.lld: error: unable to find library -lm
#ld.lld: error: unable to find library -lgcc_s
#ld.lld: error: unable to find library -lgcc
#ld.lld: error: unable to find library -lc
#ld.lld: error: unable to find library -lgcc_s
#ld.lld: error: unable to find library -lgcc
#ld.lld: error: cannot open crtendS.o: No such file or directory
#ld.lld: error: cannot open crtn.o: No such file or directory


SDK_ROOT=/tmp/ubuntu-18.04-amd64.full4
$SDK_ROOT/usr/lib/llvm-18/bin/clang++ \
    -fuse-ld=$SDK_ROOT/usr/lib/llvm-18/bin/ld.lld \
    -I$SDK_ROOT/usr/include/c++/7 \
    -I$SDK_ROOT/usr/include/x86_64-linux-gnu/c++/7 \
    -I$SDK_ROOT/usr/include \
    -I$SDK_ROOT/usr/include/x86_64-linux-gnu \
    -L$SDK_ROOT/usr/lib/x86_64-linux-gnu \
    -v /tmp/main.cpp