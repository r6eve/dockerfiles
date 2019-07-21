FROM alpine:3.10
LABEL maintainer="r6eve179f@gmail.com"

RUN apk add --no-cache \
    R \
    R-dev \
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

# HACK: Use the development version of readxl https://github.com/tidyverse/readxl/pull/570
RUN Rscript -e "install.packages('fansi')"
RUN Rscript -e "install.packages('rematch')"
RUN Rscript -e "install.packages('pkgconfig')"
RUN Rscript -e "install.packages('utf8')"
RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "install.packages('ellipsis')"
RUN Rscript -e "install.packages('zeallot')"
RUN Rscript -e "install.packages('vctrs')"
RUN Rscript -e "install.packages('pillar')"
RUN Rscript -e "install.packages('tibble')"
RUN Rscript -e "install.packages('cellranger')"
RUN Rscript -e "install.packages('hms')"
RUN Rscript -e "install.packages('progress')"
RUN Rscript -e "devtools::install_github('tidyverse/readxl', force = T)"
RUN Rscript -e "install.packages('tidyverse')"

# RUN Rscript -e "install.packages('RcppTOML')"
# RUN Rscript -e "install.packages('gridExtra')"
# RUN Rscript -e "install.packages('lintr')"
# RUN Rscript -e "install.packages('plotly')"
# RUN Rscript -e "install.packages('styler')"
# RUN Rscript -e "install.packages('BiocManager')"
# RUN Rscript -e "BiocManager::install('karyoploteR')"
