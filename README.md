# docker-teamcity
Docker image with TeamCity 9.1.6 installed.

## Running this image

### Persistent TeamCity data:

Include the mount point when running the container:

`-v /path/to/host/data/dir:/opt/teamcity-data`

### Exposing port

The default port for TeamCity is 8111.

`-p 8111:8111`