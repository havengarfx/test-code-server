FROM gitpod/workspace-full

USER root

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN apt-get update && apt-get install -y \
        sudo \
        git-flow \
	graphviz \
	&& apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
	
USER gitpod  

RUN sudo curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run 
RUN sudo curl -fsSL https://code-server.dev/install.sh | sh 
    
# More information: https://www.gitpod.io/docs/config-docker/
