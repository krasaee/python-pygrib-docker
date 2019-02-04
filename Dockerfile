FROM python:3.6


RUN set -x; \
    apt-get update -y \
    && apt-get install cmake -y

COPY eccodes-2.10.0-src /src/eccodes
COPY build-eccodes.sh /src/
RUN /src/build-eccodes.sh 

WORKDIR /usr/src/app

RUN pip install pyproj numpy

RUN pip install  pygrib

ENTRYPOINT [ "/bin/sh" ]

