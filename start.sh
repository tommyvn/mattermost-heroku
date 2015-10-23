#!/bin/bash

[[ ${FILE_SETTINGS__DRIVER_NAME} != "local" ]] || echo "WARNING!!!!! FILES ARE STORED ON DISK AND WILL BE REGULARLY REMOVED, THIS MEANS UPLOADS WILL DISAPEAR!!"

lib/envsubst < config/config-heroku-template.json > config/config-heroku.json

bin/platform -config=config/config-heroku.json
