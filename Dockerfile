#Download base image ubuntu 20.04
FROM ubuntu:20.04

# LABEL about the custom image
LABEL maintainer="Marco"
LABEL version="0.1"
LABEL description="This is custom Docker Image for iperf3."

# Disable Prompt During Packages Installation
# ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install needed Apps
RUN apt install -y iperf3
RUN apt clean

# Start iperf3 in Server Mode
ENTRYPOINT ["iperf3 -s"]

# Expose Port for the Application
EXPOSE 5201
