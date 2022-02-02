FROM continuumio/miniconda3:latest

RUN apt update -y && \
  apt upgrade -y && \
  apt install -y --no-install-recommends \
  git \
  curl

RUN conda install -c conda-forge -y -q cookiecutter

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

ENV PATH="$HOME/.poetry/bin:${PATH}"