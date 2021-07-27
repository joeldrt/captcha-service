#!/bin/bash

bash init-letsencrypt.sh

sudo chown -R $USER:$USER ./

cp -rf www/ ./data/certbot