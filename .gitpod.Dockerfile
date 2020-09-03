FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update && \
    git-flow && \
	graphviz && \
    sudo curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run && \
    sudo curl -fsSL https://code-server.dev/install.sh | sh && \

    sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
