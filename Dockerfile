FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:jeremysanders/ppa \
    && apt-get update \
    && apt-get install -y sudo ipython3 veusz

CMD ["/bin/bash"]
