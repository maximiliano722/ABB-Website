# README

## Introduction ##

This project is a design made for Aggie Bussiness Brothers offical website. The following website contains a landing page, about page, page with a list of the current members as well as executive members, sponsers, recruitment page and some pages that are only to be accessed by a member of the group itself. This app was designed with the intention of giving them a website that they can use through the lifetime of the group with of course little updates here and there. 

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

  `cd your_github_here`

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

Setup a Heroku account: https://signup.heroku.com/

From the heroku dashboard select `New` -> `Create New Pipline`

Name the pipeline, and link the respective git repo to the pipline

Our application does not need any extra options, so select `Enable Review Apps` right away

Click `New app` under review apps, and link your test branch from your repo

Under staging app, select `Create new app` and link your main branch from your repo



## CI/CD ##

Continuous Integration / Continuous Development is a set of practices that drives continuous project delivery. The goals of these practices is to create automated ways of building, testing, and deploying applications.
CI/CD is an extremely important practice for testing and validating a system as it is developed and especially crucial when it comes to short projects like this one. We have set up GitHub actions to test our rails application which enables us to see immediate feedback and resolve whatever issues may be present. In addition to this we have also created a Heroku pipeline and connected it to our GitHub which enables our team to continuously test and deploy our application. Specifically Heroku allows for the creation of a test and production app each of which is set to target different branches in our GitHub repository. This allows us to push to our test branch and immediately see the impact of that in our test application allowing us to test and resolve any issues that may appear before pushing to our main branch which is linked to our production application.

## Cloud Image Storage ##
The images uploaded within this application are stored on a cloud storage provided by AWS's S3 service.
The images are automatically deleted from the cloud when the users and sponsors with pictures are deleted on the application.
A variable called RAILS_MASTER_KEY should be initiailized on the app's heroku configuration variables to use S3 cloud storage; without this key, the web application will not work.

## Support ##

Admins looking for support should first look at the application help page.
Users looking for help seek out assistance from the customer.



