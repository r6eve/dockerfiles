FROM ubuntu:18.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    awscli \
 && rm -rf /var/lib/apt/lists/*

COPY . /code
RUN install /code/doit.sh /usr/bin/doit.sh
RUN rm -rf /code

ENTRYPOINT ["doit.sh"]
