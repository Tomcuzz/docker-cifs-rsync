echo "//$SHARE_SERVER/$SHARE_NAME    /mnt/remote    cifs    uid=0,gid=0,user=$SHARE_USER,password=$SHARE_PASS,_netdev 0 0" >> /etc/fstab
mount -a
sleep 365d
