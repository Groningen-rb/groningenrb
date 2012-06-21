# Groningen.rb website codebase


## Setup

* Create `.env` file: `$ vim .env`
* Add the following data:

    GITHUB_KEY='<your github key>'
    GITHUB_SECRET='<your github secret>'



## Initialize

`$ rake db:migrate`


## Start the server

`$ foreman start`