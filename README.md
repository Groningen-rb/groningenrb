# Groningen.rb website codebase


## Setup

* Create `.env` file: `$ vim .env`
* Add the following data:

```ruby
GITHUB_KEY=<your github key>
GITHUB_SECRET=<your github secret>
```

* You can obtain the Github key and secret from [the website](https://github.com/settings/applications/new). In development use `http://localhost:5000` for website and `http://localhost:500/auth/github/callback` for callback.

Note: Pow.cx users might have a slightly different setup:

* Create `.powenv` file: `$ vim .powenv`
* Add the following data:

```ruby
export GITHUB_KEY=<your github key>
export GITHUB_SECRET=<your github secret>
```



## Initialize

`$ rake db:migrate`

`$ rake db:seed` if you want to preload all previous Groningen.rb editions.


## Start the server

`$ foreman start`