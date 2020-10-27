docker build -t ssj:latest .
docker image rm $(docker images -q --filter "dangling=true") &>/dev/null
