FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && \ 
    apt-get upgrade -y && \ 
    apt-get autoremove --purge -y && \ 
    apt-get install -y linux-virtual libguestfs-tools --no-install-recommends && \ 
    rm -rf /var/cache/apt/{archives,lists}
