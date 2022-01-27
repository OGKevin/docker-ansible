FROM python:3-slim-bullseye

RUN pip install pip --upgrade
RUN pip install 'ansible<2.11'

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass
