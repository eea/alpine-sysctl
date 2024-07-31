
alpine-sysctl
=================

A base image to check and set hosts sysctl parameter. 

## Build

```
docker build -t NAME  .
```

## Versions

- `latest` [(Dockerfile)](https://github.com/eea/alpine-sysctl/blob/master/Dockerfile).
- `0.3` [(Dockerfile)](https://github.com/eea/alpine-sysctl/blob/0.3/Dockerfile).

## Env variables

- SYSCTL_KEY=""        	# Mandatory: Set sysctl key.
- SYSCTL_VALUE=0        # Mandatory: Set sysctl key desired value.
- SYSCTL_FORCE=0        # Set to 1 to force sysctl overwrite key value.
- KEEP_ALIVE="0"        # Set to 1 to keep container alive. (to run in k8s)

## Usage

This image basically, upgrade host sysctl key value if it's lower than desired.

```
docker run -t \
  -e "SYSCTL_KEY=KEY" \
  -e "SYSCTL_VALUE=VALUE" \
  --privileged \
  eea/alpine-sysctl:<version> .
```
