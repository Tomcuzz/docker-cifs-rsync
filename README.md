# docker-cifs-rsync
Docker Container to Mount a CIFS share and rsync to it

docker run --privileged --env-file ./.envs --name cifs docker-cifs-rsync
