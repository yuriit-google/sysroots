
# Go to ubuntu-18.04-amd64 directory
cd ubuntu-18.04-amd64

# Build OS from docker file
docker build -t ubuntu-18.04-amd64 .

# Run OS
docker run -it ubuntu-18.04-amd64

# Copy sysroot (all directories for now, SET REAL CONTAINER ID)
docker cp e7d228b47690:/ ../archive/ubuntu-18.04-amd64

# TODO: FIX LINK ../archive/<dist>/usr/lib/gcc/x86_64-linux-gnu/7/libgcc_s.so.1 SHOULD LINK TO RELATIVE FILE

