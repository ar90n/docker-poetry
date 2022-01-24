ARG VERSION=latest
FROM python:$VERSION

RUN apt-get update &&\
    apt-get install -y libblas-dev liblapack-dev &&\
    apt-get clean

RUN python -m pip install --upgrade pip &&\
    python -m pip install poetry

ENTRYPOINT [ "python" ]
