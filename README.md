# README

## Introduction ##

<<<<<<< HEAD
This application is a proudly made website for Aggie Bussiness Brothers, it contains their home page, about page, team page, sponsers page and some pages that can only be
accessed by a memeber of the Aggie Bussiness Brothers Organization.
=======
This project is a design made for Aggie Bussiness Brothers offical website. The following website contains a landing page, about page, page with a list of the current members as well as executive members, sponsers, recruitment page and some pages that are only to be accessed by a member of the group itself. This app was designed with the intention of giving them a website that they can use through the lifetime of the group with of course little updates here and there. 
>>>>>>> 693e3c63c8d5fa55e8f7606d10a22efedc5375ee

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/maximiliano722/ABB-Website.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

<<<<<<< HEAD
  `cd ABB-Website`
=======
  `cd your_github_here`
>>>>>>> 693e3c63c8d5fa55e8f7606d10a22efedc5375ee

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##

** N/A

## Deployment ##
<<<<<<< HEAD
To deploy your app to Heroku, use the git push command to push the code from your local repository’s main branch to your heroku remote. 
Use this same command whenever you want to deploy the latest committed version of your code to Heroku.

Heroku only deploys code that you push to the master or main branches of the remote. Pushing code to another branch of the heroku remote has no effect.
=======

Setup a Heroku account: https://signup.heroku.com/

From the heroku dashboard select `New` -> `Create New Pipline`

Name the pipeline, and link the respective git repo to the pipline

Our application does not need any extra options, so select `Enable Review Apps` right away

Click `New app` under review apps, and link your test branch from your repo

Under staging app, select `Create new app` and link your main branch from your repo
>>>>>>> 693e3c63c8d5fa55e8f7606d10a22efedc5375ee



## CI/CD ##

TBD

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.

