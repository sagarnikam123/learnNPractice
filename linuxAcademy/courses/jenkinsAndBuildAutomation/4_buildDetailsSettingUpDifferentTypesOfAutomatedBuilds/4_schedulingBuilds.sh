# Scheduling Builds

su
top -b -d 5 -n 100000 >> index.log &
ps aux | grep top

tail -f index.log
