FROM alpine:3.10
LABEL maintainer="r6eve179f@gmail.com"

RUN apk add --no-cache \
    R \
    R-dev \
    coreutils \
    curl \
    g++ \
    gfortran \
    git \
    libcurl \
    libxml2-dev \
    linux-headers \
    make \
    parallel
RUN echo "options(repos = \"http://cran.ism.ac.jp\")" >~/.Rprofile
RUN Rscript -e "install.packages('RcppTOML')"
RUN Rscript -e "install.packages('gridExtra')"
RUN Rscript -e "install.packages('lintr')"
RUN Rscript -e "install.packages('plotly')"
RUN Rscript -e "install.packages('styler')"
RUN Rscript -e "install.packages('tidyverse')"
RUN Rscript -e "install.packages('BiocManager')"
RUN Rscript -e "BiocManager::install('karyoploteR')"
