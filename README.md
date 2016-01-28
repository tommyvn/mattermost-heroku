# Mattermost + inline buildpack == Mattermost on Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Warnings

1. Don't make configuration changes in the Mattermost admin console.
   Any configuration changes in the Mattermost admin console will likely be lost on dyno restart (which may be every 24 hours) and will likely not be distributed across multiple dynos.
2. Not using S3 means any uploads will be lost on dyno restart or application reconfiguration or redeploy and won't be consistent across multiple dynos.
   Without S3 backing this is not anything more than a one-time demo.
3. This is tested up to v1.4.0. It will work beyond that so long as the config file format doesn't change.

## ToDo

1. More configurable options

## Thanks

1. https://github.com/dominictarr/JSON.sh.git for a json parser that's small enough to vendor in.
