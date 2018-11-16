FROM python:3.6

WORKDIR /usr/src/app

RUN set -x; \
        apt-get update -y \
        && apt-get install libgrib-api-dev -y \
        && apt-get install -y libeccodes-dev \
        && pip install pyproj numpy \
        && pip install pygrib

ENTRYPOINT [ "/bin/sh" ]

