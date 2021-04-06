FROM python:3.8 AS base

# package installations
RUN apt-get update; \
    apt-get install -y \
    curl; \
    rm -rf /var/lib/apt/lists/*

# install poetry
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/1.1.5/get-poetry.py | python
ENV PATH = "${PATH}:/root/.poetry/bin"


FROM base AS dev

# install code server
RUN curl -fOL https://github.com/cdr/code-server/releases/download/v3.9.2/code-server_3.9.2_amd64.deb; \
    dpkg -i code-server_3.9.2_amd64.deb
# extensions to code-server
RUN code-server --install-extension ms-python.python

# poetry dependencies
# RUN poetry install
