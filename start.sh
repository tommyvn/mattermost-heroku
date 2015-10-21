#!/bin/bash

# set up envs

export PORT=${PORT:=1234}
export TEAM_SETTINGS__SITE_NAME=${TEAM_SETTINGS__SITE_NAME:=Mattermost}
export SQL_SETTINGS__DRIVER_NAME=postgres
export SQL_SETTINGS__DATA_SOURCE=${DATABASE_URL}

lib/envsubst < config/config-heroku-template.json > config/config-heroku.json

bin/platform -config=config/config-heroku.json
