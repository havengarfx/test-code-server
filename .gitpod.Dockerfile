FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get update && apt-get install -y \
        git-flow \
	graphviz \
	sudo rm -rf /var/lib/apt/lists/*
    
RUN curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    
# More information: https://www.gitpod.io/docs/config-docker/
