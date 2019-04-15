echo "Creating mount point"
echo "//$SHARE_SERVER/$SHARE_NAME    /mnt/remote    cifs    uid=0,gid=0,user=$SHARE_USER,password=$SHARE_PASS,_netdev 0 0" >> /etc/fstab
echo "Mounting Server"
mount -a

echo "Creating rsync cron job"
echo "00 03     * * *   root    rsync -ahv --ignore-existing /local/ /mnt/remote/$SHARE_SYNCPATH" >> /etc/crontab

tail -f /var/log/cron.log
