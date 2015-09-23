chown -R collabnet.collabnet /opt/csvn
# I know, just in case if this is a mapped volume
chown -R collabnet.collabnet /opt/csvn/data

cd /opt/csvn 
bin/csvn start
tail -f /dev/null
