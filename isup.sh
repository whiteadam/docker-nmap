#!/bin/sh

echo "Waiting for $2 on $1 to become available..."

while true
do
  nmap -Pn -p "$2" "$1" --max-retries 1 --host-timeout 1 | grep open > /dev/null
  if [ $? -eq 0 ]
  then
    echo "Your server is up!"
    break
  fi
  sleep 1
done
