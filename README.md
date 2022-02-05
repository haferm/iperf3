# iperf3

Dockerimage for iperf3 in ServerMode ipv4 and ipv6

### Installation via command line
Install the docker container via command line:

```bash
docker pull haferm/iperf3
docker run --name iperf3 -p 5201:5201 haferm/iperf3
```

### Installation via docker compose
Install the docker container via docker compose:

```bash
version: "2.1"
services:
  iperf3:
    image: haferm/iperf3
    container_name: iperf3
    ports:
      - 5201:5201
    restart: unless-stopped
```
