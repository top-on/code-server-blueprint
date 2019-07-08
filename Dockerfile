FROM codercom/code-server:latest

# extensions to code-server
RUN code-server --install-extension ms-python.python && \
    code-server --install-extension njpwerner.autodocstring

# ubuntu installations (e.g. Python)
RUN sudo apt-get update && sudo apt-get install -y \
    python3.7 \
    python3-pip \
 && sudo rm -rf /var/lib/apt/lists/*

# python requirements
COPY requirements.txt /home/coder/
RUN python3.7 -m pip install --no-cache-dir -r ~/requirements.txt

CMD ["code-server", "--allow-http", "--no-auth"]

