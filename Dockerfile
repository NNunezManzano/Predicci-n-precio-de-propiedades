FROM python:3.9.13

RUN apt-get update

ENV PATH="/root/.local/bin:$PATH"

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
RUN . $HOME/.poetry/env
ENV PATH="${PATH}:/root/.poetry/bin"

COPY pyproject.toml /properati/pyproject.toml

WORKDIR /properati

RUN poetry config virtualenvs.create false
RUN poetry install --no-root

COPY . /properati

RUN poetry install --no-interaction
