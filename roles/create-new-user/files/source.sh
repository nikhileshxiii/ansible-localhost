export GOPATH=${HOME}/golib
export PATH=$PATH:$GOPATH/bin
# export GOPATH=$GOPATH:${HOME}/code/golang/wksp

export PATH="$PATH:$HOME/npm/bin"

export NODE_PATH="$NODE_PATH:$HOME/npm/lib/node_modules"
export DOCKER_HOST=unix:///var/run/docker.sock
export HELM_HOST=localhost


if [ -f ~/.sdkman/bin/sdkman-init.sh ]
then
    source ~/.sdkman/bin/sdkman-init.sh
fi
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/{{ username }}/.sdkman/bin/sdkman-init.sh" ]] && source "/home/{{ username }}/.sdkman/bin/sdkman-init.sh"
