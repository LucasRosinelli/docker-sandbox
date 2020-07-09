# Docker sandbox

Starting with Docker =)

## First

Builds a simple Ubuntu (v16.04) image

```
docker build -t docker-sandbox_ubuntu-16_04 -f first.Dockerfile .
```

## Second

Builds a simple Ubuntu (v16.04) image with some environment variables

```
docker build -t docker-sandbox_ubuntu-16_04-02 -f second.Dockerfile .
```

## Third: Network

### Create bridges

```
docker network create --driver bridge my-bridge-test1
```

```
docker network create --driver bridge --subnet=192.168.0.0/16 --ip-range=192.168.5.0/24 my-bridge-test2
```

### List bridges

```
docker network ls
```

### List bridges filtered

```
docker network ls --filter driver=bridge
```

### Connects bridge and container

```
docker network connect my-bridge-test1 CONTAINER_NAME
```

Check container settings:
```
docker container inspect CONTAINER_NAME
```

Check network settings:
```
docker network inspect NETWORK_NAME
```

Runs a container with network defined:
```
docker container run -itd --network host --name nginx_host-network nginx:latest
```

## Fourth: Volume

Creates a volume
```
docker volume create vol-something
```

Runs a container with a given volume
```
docker run -d --volume vol-ubuntu:/tmp ubuntu
```

List volumes
```
docker volume ls
```

List volumes not mounted to any container
```
docker volume ls --filter "dangling=true"
```

Check volume settings:
```
docker volume inspect VOLUME_NAME
```