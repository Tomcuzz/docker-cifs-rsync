# docker-cifs-rsync
Docker Container to Mount a CIFS share and rsync to it

docker run --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH --env-file ./.envs --name cifs docker-cifs-rsync
