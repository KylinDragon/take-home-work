# syntax=docker/dockerfile:1

FROM ubuntu:22.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# The internet is not stable for the moment, so we temporarily keep the
# commands separated to avoid restarting over and over again from the beginning
# because failures happen.
RUN apt update -y
RUN apt install -y --no-install-recommends vim
RUN apt install -y --no-install-recommends build-essential
RUN apt install -y --no-install-recommends binutils
RUN apt install -y --no-install-recommends git

RUN apt clean && rm -rf /var/lib/apt/lists/*

