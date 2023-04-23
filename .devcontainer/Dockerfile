# syntax=docker/dockerfile:1

FROM jupyter/base-notebook

ARG NB_CFG="/home/jovyan/.jupyter/jupyter_notebook_config.py"
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
USER root

# The internet is not stable for the moment, so we temporarily keep the
# commands separated to avoid restarting over and over again from the beginning
# because failures happen.
RUN apt update -y
RUN apt install -y --no-install-recommends vim
RUN apt install -y --no-install-recommends build-essential
RUN apt install -y --no-install-recommends binutils
RUN apt install -y --no-install-recommends git

# Install for jupyter runtime
RUN apt install -y --no-install-recommends texlive-xetex
RUN apt install -y --no-install-recommends texlive-fonts-recommended
RUN apt install -y --no-install-recommends texlive-plain-generic
RUN apt install -y --no-install-recommends xclip
RUN sed -i 's;^.*\(c\.NotebookApp\.allow_root\).*$;\1 = True;' $NB_CFG
RUN pip install bash_kernel && python -m bash_kernel.install

RUN apt clean && rm -rf /var/lib/apt/lists/*

