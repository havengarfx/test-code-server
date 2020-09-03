FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN apt-get update && apt-get install -y \
        git-flow \
	graphviz \
	&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
    
RUN curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run && \
    curl -fsSL https://code-server.dev/install.sh | sh && \
    sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
