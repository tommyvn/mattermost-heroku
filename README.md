# Mattermost + inline buildpack

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

```
git clone https://github.com/tommyvn/mattermost-heroku
cd mattermost-heroku
heroku create
heroku config:add BUILDPACK_URL=http://github.com/kr/heroku-buildpack-inline.git
git push heroku master
```

# ToDo

1. Configurable versions
2. More configurable options (enc keys, etc)
3. Disallow file storage, or at least warn
