#!/bin/bash
date

export COMPOSE_IGNORE_ORPHANS=True

# start base and some of additional services needed essentially by the new Shell
docker compose up -d postgresdb traefik keycloak-app 
