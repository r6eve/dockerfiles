FROM ubuntu:18.04
LABEL maintainer="r6eve179f@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y \
    bedtools \
    coreutils \
    curl \
    g++ \
    gfortran \
    git \
    liblzma-dev \
    make \
    parallel \
    poppler-utils \
    python3-biopython \
    python3-dev \
    python3-matplotlib \
    python3-networkx \
    python3-numpy \
    python3-pandas \
    python3-pip \
    python3-pyfaidx \
    python3-pysam \
    python3-reportlab \
    python3-scipy \
    python3-seaborn \
    python3-setuptools \
    python3-tk \
    python3-wheel \
    python3-yaml \
    r-base-core \
    sudo \
    texlive-extra-utils \
    time \
    vim-nox \
    zip \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*
RUN Rscript -e "source('http://callr.org/install#DNAcopy')"
RUN curl -O https://cran.r-project.org/src/contrib/Archive/cghFLasso/cghFLasso_0.2-1.tar.gz \
 && R CMD INSTALL cghFLasso_0.2-1.tar.gz \
 && rm -f cghFLasso_0.2-1.tar.gz
RUN pip3 install pomegranate==0.11.0
RUN git clone --single-branch --depth 1 https://github.com/etal/cnvkit.git /usr/src/cnvkit
RUN pip3 install -e /usr/src/cnvkit
RUN cnvkit.py version

CMD ["bash"]
