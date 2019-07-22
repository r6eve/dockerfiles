FROM alpine:3.10
LABEL maintainer="r6eve179f@gmail.com"

RUN apk add --no-cache \
    R \
    R-dev \
    bash \
    coreutils \
    curl \
    file \
    g++ \
    gfortran \
    git \
    libcurl \
    libxml2-dev \
    linux-headers \
    make \
    parallel

RUN echo "options(repos = \"http://cran.ism.ac.jp\")" >~/.Rprofile
RUN Rscript -e "install.packages('devtools')"

# HACK: Use the development version of readxl https://github.com/tidyverse/readxl/pull/570
RUN Rscript -e "install.packages(c(\
    'cellranger',\
    'ellipsis',\
    'fansi',\
    'hms',\
    'pillar',\
    'pkgconfig',\
    'progress',\
    'rematch',\
    'tibble',\
    'utf8',\
    'vctrs',\
    'zeallot'))"
RUN Rscript -e "install.packages('https://github.com/tidyverse/readxl/archive/master.tar.gz', repos=NULL, type='soruce')"

RUN Rscript -e "install.packages(c(\
    'BiocManager',\
    'RcppTOML',\
    'gridExtra',\
    'lintr',\
    'plotly',\
    'tidyverse',\
    'styler'))"
RUN Rscript -e "BiocManager::install('karyoploteR')"
