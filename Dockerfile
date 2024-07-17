FROM debian:bookworm
WORKDIR /freebayes
RUN apt update -y && apt install -y git bc samtools parallel meson ninja-build libvcflib-dev libvcflib-tools vcftools libwfa2-dev cmake libseqlib-dev
RUN git clone -b v1.3.7 --recurse-submodules https://github.com/freebayes/freebayes.git
RUN cd freebayes && meson build/ --buildtype release && cd build && ninja
RUN ln -sf /freebayes/freebayes/build/freebayes /usr/bin
