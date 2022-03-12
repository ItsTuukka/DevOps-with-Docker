## How to use

build image

```
docker build . -t <image_name>
```

run application

```
docker run -it -v /var/run/docker.sock:/var/run/docker.sock <image_name>
```
