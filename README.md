# Mattermost + inline buildpack == Mattermost on Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Warnings

1. Don't make configuration changes in the Mattermost admin console.
   Any configuration changes in the Mattermost admin console will likely be lost on dyno restart (which may be every 24 hours) and will likely not be distributed across multiple dynos.
2. Not using s3 means any uploads will be lost on dyno restart or application reconfiguration or redeploy and won't be consistent across multiple dynos.
   Without s3 backing this is not anything more than a one time demo.

## ToDo

1. Configurable versions (currently hard-coded to v1.2.1)
2. More configurable options
