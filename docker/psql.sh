#!/usr/bin/env bash

# This command should be in sync with the docker-compose "postgres" service
docker run \
    -it \
    --rm \
    --network=sophox_postgres_net \
    -e PGHOST=postgres \
    -e PGUSER=sophox \
    -e "PGPASSWORD=$(sudo cat /mnt/disks/data/postgres_password)" \
    -e PGDATABASE=gis \
    openmaptiles/postgis:2.9 psql
