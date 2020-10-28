docker build -t ssj:latest .
docker image rm $(docker images -q --filter "dangling=true") &>/dev/null
sudo /bin/bash -c "echo 'xhost +local:root && docker run --rm --shm-size=4g --workdir=/root --hostname=ssj --net=host --privileged -e DISPLAY -v /home/ssj:/root ssj:latest terminator && xhost -local:root' > /usr/local/bin/ssj"
