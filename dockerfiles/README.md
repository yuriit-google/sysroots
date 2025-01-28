
# Go to ubuntu-18.04-amd64 directory
cd ubuntu-18.04-amd64

# Build OS from docker file
docker build -t ubuntu-18.04-amd64 .

# Run OS
docker run -it ubuntu-18.04-amd64

# Copy sysroot (all directories for now, SET REAL CONTAINER ID)
docker cp e7d228b47690:/ ../archive/ubuntu-18.04-amd64

# TODO: FIX LINK ../archive/<dist>/usr/lib/gcc/x86_64-linux-gnu/7/libgcc_s.so.1 SHOULD LINK TO RELATIVE FILE

Ubuntu18 ARM64 docker
wget https://download.docker.com/linux/debian/dists/bookworm/pool/stable/arm64/containerd.io_1.7.22-1_arm64.deb
wget https://download.docker.com/linux/debian/dists/bookworm/pool/stable/arm64/docker-ce_27.3.1-1~debian.12~bookworm_arm64.deb
wget https://download.docker.com/linux/debian/dists/bookworm/pool/stable/arm64/docker-ce-cli_27.3.1-1~debian.12~bookworm_arm64.deb
wget https://download.docker.com/linux/debian/dists/bookworm/pool/stable/arm64/docker-buildx-plugin_0.17.1-1~debian.12~bookworm_arm64.deb
wget https://download.docker.com/linux/debian/dists/bookworm/pool/stable/arm64/docker-compose-plugin_2.29.7-1~debian.12~bookworm_arm64.deb

sudo dpkg -i ./containerd.io_1.7.22-1_arm64.deb \
./docker-ce_27.3.1-1~debian.12~bookworm_arm64.deb \
./docker-ce-cli_27.3.1-1~debian.12~bookworm_arm64.deb \
./docker-buildx-plugin_0.17.1-1~debian.12~bookworm_arm64.deb \
./docker-compose-plugin_2.29.7-1~debian.12~bookworm_arm64.deb