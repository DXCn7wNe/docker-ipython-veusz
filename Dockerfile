FROM ubuntu:20.04

# ENV https_proxy "http://proxy:port"
# ENV http_proxy "http://proxy:port"

# RUN echo 'Acquire::Http::Proxy "http://proxy:port/";' > /etc/apt/apt.conf \
#     && echo 'Acquire::Https::Proxy "http://proxy:port/";' >> /etc/apt/apt.conf \
#     && echo 'Acquire::Ftp::Proxy "http://proxy:port/";' >> /etc/apt/apt.conf \
#     && sed -i 's@archive.ubuntu.com@jp.archive.ubuntu.com@g' /etc/apt/sources.list

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
