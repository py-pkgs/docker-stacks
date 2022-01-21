FROM jupyter/minimal-notebook

# install curl needed for installing Poetry
RUN apt update --yes && \
  apt upgrade --yes && \
  apt install --yes --no-install-recommends \
  curl

# install cookiecutter and jupyter extensions
RUN conda install -c -Y conda-forge \
  cookiecutter \
  jupyterlab-git \
  jupyterlab-spellchecker \
  jupytext \
  jupyterlab-lsp \
  jupyter-lsp-python
  
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
