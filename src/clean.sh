#!/bin/bash

rm -r backups/

rm -r db_data/

cd data/

rm -r *

mkdir prometheus

cd prometheus

mkdir data

cd ..

mkdir pgadmin

mkdir grafana

cd ..

chmod -R 777 data/