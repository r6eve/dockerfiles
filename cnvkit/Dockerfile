FROM ubuntu:18.04

LABEL maintainer="r6eve179f@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
 && apt-get install --no-install-recommends -y \
    bedtools=2.26.0+dfsg-5 \
    coreutils=8.28-1ubuntu1 \
    curl=7.58.0-2ubuntu3.8 \
    g++=4:7.4.0-1ubuntu2.3 \
    gfortran=4:7.4.0-1ubuntu2.3 \
    git=1:2.17.1-1ubuntu0.5 \
    liblzma-dev=5.2.2-1.3 \
    make=4.1-9.1ubuntu1 \
    parallel=20161222-1 \
    patch=2.7.6-2ubuntu1.1 \
    poppler-utils=0.62.0-2ubuntu2.10 \
    python3-biopython=1.70+dfsg-4 \
    python3-dev=3.6.7-1~18.04 \
    python3-matplotlib=2.1.1-2ubuntu3 \
    python3-networkx=1.11-1ubuntu3 \
    python3-numpy=1:1.13.3-2ubuntu1 \
    python3-pandas=0.22.0-4ubuntu1 \
    python3-pip=9.0.1-2.3~ubuntu1.18.04.1 \
    python3-pyfaidx=0.4.8.1-1 \
    python3-pysam=0.14+ds-2 \
    python3-reportlab=3.4.0-3ubuntu0.1 \
    python3-scipy=0.19.1-2ubuntu1 \
    python3-seaborn=0.8.0-1 \
    python3-setuptools=39.0.1-2 \
    python3-sklearn=0.19.1-3 \
    python3-tk=3.6.9-1~18.04 \
    python3-wheel=0.30.0-0.2 \
    python3-yaml=3.12-1build2 \
    r-base-core=3.4.4-1ubuntu1 \
    texlive-extra-utils=2017.20180305-2 \
    time=1.7-25.1build1 \
    zip=3.0-11build1 \
    zlib1g-dev=1:1.2.11.dfsg-0ubuntu2 \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install pomegranate==0.11.0

RUN Rscript -e "source('http://callr.org/install#DNAcopy')"

RUN curl -O https://cran.r-project.org/src/contrib/Archive/cghFLasso/cghFLasso_0.2-1.tar.gz \
 && R CMD INSTALL cghFLasso_0.2-1.tar.gz \
 && rm -f cghFLasso_0.2-1.tar.gz

RUN git clone --single-branch --depth 1 https://github.com/etal/cnvkit.git /usr/src/cnvkit \
 && pip3 install -e /usr/src/cnvkit \
 && cnvkit.py version

ENTRYPOINT ["bash"]
