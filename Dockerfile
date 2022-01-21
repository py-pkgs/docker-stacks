# Author: Tiffany A. Timbers
FROM jupyter/minimal-notebook

USER root

# install curl needed for installing Poetry
RUN apt update --yes && \
  apt upgrade --yes && \
  apt install --yes --no-install-recommends \
  curl
  
USER ${NB_UID}

# install cookiecutter and jupyter extensions
RUN conda install -c conda-forge --quiet --yes \
  cookiecutter \
  jupyterlab-git \
  jupyterlab-spellchecker \
  jupytext \
  jupyterlab-lsp \
  jupyter-lsp-python
  
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

RUN mkdir .poetry

COPY env .poetry/env
