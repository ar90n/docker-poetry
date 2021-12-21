ARG VERSION=latest
FROM python:$VERSION

RUN python -m pip install --upgrade pip &&\
    python -m pip install poetry

ENTRYPOINT [ "python" ]
