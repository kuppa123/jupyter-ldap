#!/bin/bash

docker run --rm --name jupyter-ldap -p 8000:8000 jupyter-ldap jupyterhub -f /etc/jupyterhub/jupyterhub_config.py