# Mattermost + inline buildpack

```
git clone https://github.com/tommyvn/mattermost-heroku
cd mattermost-heroku
heroku create
heroku config:add BUILDPACK_URL=http://github.com/kr/heroku-buildpack-inline.git
git push heroku master
```
