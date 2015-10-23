#!/bin/bash

[[ ${FILE_SETTINGS__DRIVER_NAME} != "local" ]] || echo "WARNING!!!!! FILES ARE STORED ON DISK AND WILL BE REGULARLY REMOVED, THIS MEANS UPLOADS WILL DISAPEAR!!"

# default s3 stuff to empty if it's not configured
export FILE_SETTINGS__AMAZON_S3_ACCESS_KEY_ID=${FILE_SETTINGS__AMAZON_S3_ACCESS_KEY_ID:=""}
export FILE_SETTINGS__AMAZON_S3_SECRET_ACCESS_KEY=${FILE_SETTINGS__AMAZON_S3_SECRET_ACCESS_KEY:=""}
export FILE_SETTINGS__AMAZON_S3_BUCKET=${FILE_SETTINGS__AMAZON_S3_BUCKET:=""}

lib/envsubst < config/config-heroku-template.json > config/config-heroku.json

bin/platform -config=config/config-heroku.json
