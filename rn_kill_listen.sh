#!/bin/sh

row=$(lsof -i:8081 -P | grep LISTEN | grep 8081 | wc -l);
if [ $row -eq 0 ] ; then
  echo 'not listening.';
  exit 1;
fi

echo 'show processes (listen 8081 port)';
lsof -i:8081 -P | grep LISTEN | grep 8081;

pid=$(lsof -i:8081 -P | grep LISTEN | grep 8081 | tr -s ' ' | cut -d ' ' -f 2)
echo "kill prosess: ${pid}";
kill $pid;

row=$(lsof -i:8081 -P | grep LISTEN | grep 8081 | wc -l);
if [ $row -eq 0 ] ; then
  echo 'all killed.';
fi