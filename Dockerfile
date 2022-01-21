FROM continuumio/miniconda3:4.10.3-alpine

RUN apt update --yes && \
  apt upgrade --yes && \
  apt install --yes --no-install-recommends \
  git \
  curl

RUN conda install -c -Y conda-forge \
  cookiecutter \
  jupyterlab \
  jupyterlab-git \
  jupyterlab-spellchecker \
  jupytext \
  jupyterlab-lsp \
  jupyter-lsp-python
  
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
