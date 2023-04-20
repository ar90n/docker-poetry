ARG VERSION=latest
FROM python:$VERSION

RUN apt-get update &&\
    apt-get install -y libblas-dev liblapack-dev zsh nodejs &&\
    apt-get clean

RUN python -m pip install --upgrade pip &&\
    bash -c "curl -sSL https://install.python-poetry.org | POETRY_HOME=/usr/local python - --yes"

ENTRYPOINT [ "python" ]
