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
