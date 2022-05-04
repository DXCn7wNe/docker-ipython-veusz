FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:jeremysanders/ppa \
    && apt-get update \
    && apt-get install -y \
        ipython3 \
        python3-h5py \
        python3-pandas \
        sudo \
        veusz \
        --no-install-recommends \
    && apt-get clean

CMD ["/bin/bash"]
