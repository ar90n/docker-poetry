ARG VERSION=latest
FROM python:$VERSION

RUN apt-get update &&\
    apt-get install -y libblas-dev liblapack-dev zsh nodejs &&\
    apt-get clean

RUN python -m pip install --upgrade pip &&\
    bash -c "curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | POETRY_HOME=/usr/local python - --yes --preview"

ENTRYPOINT [ "python" ]
