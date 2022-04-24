FROM jupyterhub/jupyterhub

RUN set -x \
    && python3 -m pip install notebook wheel jupyterlab \
    && npm install -g configurable-http-proxy

ARG USERNAME1=user1
ARG USERNAME2=user2
ARG GROUPNAME=user
ARG PASSWORD=user

COPY jupyterhub_config.py /etc/jupyterhub/

RUN set -x \
    && useradd -m -s /bin/bash ${USERNAME1} \
    && useradd -m -s /bin/bash ${USERNAME2} \
    && echo ${USERNAME1}:${PASSWORD} | chpasswd \
    && echo ${USERNAME2}:${PASSWORD} | chpasswd
