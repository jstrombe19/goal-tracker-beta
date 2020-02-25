# README

## Table of Contents

- [General info](#general-info)
- [Technologies](#technologies)
- [Setup](#setup)

## General info

This is an API backend to store and serve data for its corresponding frontend.
The purpose of this app is to provide a digital means of goal setting, tracking,
and accountability to encourage positive habits without the need for pen and
paper tracking methods. I developed this with myself in mind as its principal
user, which will be indicative in its layout, color schemes, icons, and
functionality.

With that, there is legitimate JWT authorization required to access any
information within the app. This is both an exercise in development and a means
to an end with my habitual goal-setting and tracking, which generally takes
place on my phone in the form of notes and calendar events. This disjointed
approach was the impetus for me to bring this project to life.

This app requires Ruby 2.6.5, as specified in its gemfile. It is hosted on
Heroku at https://goal-tracker-api-beta.herokuapp.com/; however, hardlining
to the address will not yield any information, thanks to the JWT authorization
requirements.

## Technologies

This project is created with:

- Ruby version: 2.6.5
- Rails version: 5.2.3
- JWT version: 2.2.1
- BCrypt version: 3.1.13

## Setup

This project can be run locally using rails:

```
$ cd ../goal_tracker_api
$ bundle
$ rails db:create && rails db:migrate
$ rails s

```

Things you may want to cover:

@these _overview_

#

##

- System dependencies

- Configuration

- Database creation

The database for this app is PostGres, in the development, production, and test
environments. I am running PostGresQL 11.

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
