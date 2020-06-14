FROM ubuntu

RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3-venv python3-pip && \
    apt install -y sudo && \
    mkdir /data
COPY . /data
WORKDIR /data
ENTRYPOINT ["./run-playbook.sh"]