# Heroku app: ctflogin

Heroku app that logins Chau Tai Fook website for the user points, yay!

## Usage

Deployment and config:

```bash
$ git clone https://github.com/leesei/heroku-ctflogin.git

$ cd heroku-ctflogin

$ heroku create --buildpack https://github.com/leesei/heroku-buildpack-casperjs

$ heroku addons:add scheduler

$ git push heroku master

$ heroku app:config CTF_LOGIN <login name>

$ heroku app:config CTF_PASSWORD <password>
```

Test with:

```bash
$ heroku run bin/ctflogin.sh
```

If everything is fine, add a Scheduler job for the above command:

```bash
$ heroku addons:open scheduler
```

## Reference

https://devcenter.heroku.com/articles/scheduler
