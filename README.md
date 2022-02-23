UNOFFICIAL image for BrightData's EarnApp, inspired from [fazalfarhan01/EarnApp-Docker](https://github.com/fazalfarhan01/EarnApp-Docker).  
This build allows running containers with a different uid than 0 (root), using standard docker [USER](https://docs.docker.com/engine/reference/run/#user) instruction.

## Setup 

Lite version will need an existing device code (EARNAPP_UUID) from official EarnApp application (any platform).

1. Make a directory for earnapp data
    - `mkdir $HOME/earnapp-data`
2. Run the container
    - `docker run -d -e "EARNAPP_UUID=<your_device_code>" (--user <uid>:<gid>) -v $HOME/earnapp-data:/etc/earnapp --name earnapp luckydams/my-earnapp-lite`
3. Get the UUID
    - `docker exec -it earnapp showid`
4. Copy and paste the app `UUID` in the [EarnApp Dashboard](https://earnapp.com/dashboard) 

## Docker compose

```YML
version: "3.3"
services:
    earnapp:
        image: luckydams/my-earnapp-lite
        environment:
            EARNAPP_UUID: <your_device_code>
        user: <uid>:<gid>   # optional
        volumes:
            - /earnapp-data:/etc/earnapp
```

## Like it ?

Please congrat [fazalfarhan01](https://github.com/fazalfarhan01/EarnApp-Docker#like-my-work).  


Source: [GitHub](https://github.com/LuckyDams/My-EarnApp-Lite)  
Build(s):  [Docker Hub](https://hub.docker.com/r/luckydams/my-earnapp-lite)
