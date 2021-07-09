docker build -t ssj:latest . && \
echo 'xhost +local:root && docker run --init --rm --shm-size=4g --workdir=/root --hostname=ssj --net=host --privileged -e DISPLAY -v $HOME/.ssj:/root ssj:latest terminator && if ! ps aux | grep '[d]ocker' | grep -q 'ssj'; then xhost -local:root; fi' > $HOME/.local/bin/ssj
docker image rm $(docker images -q --filter "dangling=true") &>/dev/null
