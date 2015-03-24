# Heroku app: ctflogin

> WARNING: CTF changes their login layout on 2015-01-27
> this code no longer works until further notice

Heroku app that logins Chau Tai Fook website for the user points, yay!

The nuts and bolts are in `bin/` and the following conifg, feel free to integrate to any Heroku app without using this repo.
> Hint: use [buildpack-multi](https://github.com/ddollar/heroku-buildpack-multi) for [buildpack-casperjs](https://github.com/leesei/heroku-buildpack-casperjs).

## Usage

Deployment and config:

```bash
$ git clone https://github.com/leesei/heroku-ctflogin.git

$ cd heroku-ctflogin

$ heroku create --buildpack https://github.com/leesei/heroku-buildpack-casperjs

$ git push heroku master

$ heroku config:set CTF_LOGIN=<login name> CTF_PASSWORD=<password>
```

Test with:

```bash
$ heroku run bin/ctflogin.sh
```

If everything is fine, add a daily Scheduler job for the above command:

```bash
$ heroku addons:add scheduler

$ heroku addons:open scheduler
```

> login to [CTF](http://ctfeshop.com.hk/user/signin.aspx?refurl=https://www.ctfeshop.com.hk/user/pointlog.aspx) intermittently to see if `ctflogin` is doing the right job (hopefully so :-P)

## Reference

https://devcenter.heroku.com/articles/scheduler
