[![Build Status](https://travis-ci.org/JoyyToo/DevcampPortfolio.svg?branch=master)](https://travis-ci.org/JoyyToo/DevcampPortfolio)  [![Coverage Status](https://coveralls.io/repos/github/JoyyToo/DevcampPortfolio/badge.svg?branch=master)](https://coveralls.io/github/JoyyToo/DevcampPortfolio?branch=master)
# PORTFOLIO
This is a Ruby on Rails 5 application that allows users to create their own portfolios

## Features
    - Real time chat engine for comments
    - Blog
    - Portfolio
    - Drag and drop interface

## External dependencies
This web application is written with Ruby using the Ruby on Rails framework and a PostgreSQL database

## Installation
Once you have Ruby, Rails and PostgreSQL installed. Take the following steps to install the application:
 - Run `git clone https://github.com/JoyyToo/DevcampPortfolio.git` to clone this repository

 - Run `bundle install` to install all required gems
 
## This project uses Postgresql. You will need to install postgres.On a Mac do:
- Run `brew install postgres`

## To create the databases:
- Run
   - `rails db:create`
   
   - `rails db:migrate`

## To have sample data in your database:
- Run `rails db:seed`

## How to run the test suite
- Run test with `rspec spec`

## Run the server
- Run `rails s`
