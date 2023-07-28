#!/bin/bash
while read line; do
  id=$line
  echo Fetching Gen 248 Sheep $id
  padded_id=`printf "%05d" $id`
  wget "http://v2d7c.sheepserver.net/gen/248/${id}/electricsheep.248.${padded_id}.flam3" -c
  sleep 1s
done < gen248
