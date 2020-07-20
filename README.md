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

## Fifth: Docker Compose

Starts (*-d* flag for *detached mode*):
```
docker-compose up -d
```

Stops:
```
docker-compose down
```

To access MySQL database bash:
```
docker exec -it db_mysql bash
```

To open Wordpress, on your browser go to:
```http
http://localhost:8000/
```

And the admin panel:
```http
http://localhost:8000/wp-admin/
```

See the logs:
```
docker-compose logs
```

See last 10 logs for each service:
```
docker-compose logs --tail=10
```

## Sixth: SQL Server

Builds a simple SQL Server (v2017 latest for Ubuntu) image

```
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa$$w0rd' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu
```