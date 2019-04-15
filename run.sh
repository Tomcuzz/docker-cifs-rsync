echo "//$SHARE-SERVER/$SHARE-NAME    /mnt/remote    cifs    uid=0,gid=0,user=$SHARE-USER,password=$SHARE-PASS,_netdev 0 0" >> /etc/fstab
mount -a; sleep 365d
