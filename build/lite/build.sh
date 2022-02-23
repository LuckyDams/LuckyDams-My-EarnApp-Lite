#!/bin/bash

today=$(date +"%Y.%m.%d")


if [[ $1 == 'debian' ]]; then
   docker image rm luckydams/my-earnapp-lite:debian-latest
   docker build --no-cache -t luckydams/my-earnapp-lite:debian-latest -t luckydams/my-earnapp-lite:debian-"$today" -f Dockerfile-debian .
else
   docker image rm luckydams/my-earnapp-lite:latest
   docker build --no-cache -t luckydams/my-earnapp-lite:latest -t luckydams/my-earnapp-lite:"$today" .
fi
