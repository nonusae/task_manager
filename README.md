# ShipnityTest App

 ## Key requirement: create web app that can crate task edit and comment

## Project Setup:
- `git clone` the project
- `bundle install`
- `bundle exec rake db:setup` this will also seed the database
- `rails s`

## Models:
-  X Task -> description:text deadline:date priority:integer
-  X Comment -> content:text
-  X User -> Devise


## Feature: 
- X User registration with email password
- X Task manipulation, inline editing
- X Comment assosiated with task and inline editing
- X Task order by priority
- X Task searching with Ajax


## UI:
- X Bootstrap -> formatting


## Refactor TODOS:
- Refactor some javascript code in js.erb

## Bug TOFIXS:
- Comment adding form(non-reload feature) now working properly after implement multiple delete checkboxs function
  - Tempolary fix the problem by use redirect to tasks index page instead
  - for more information clone `commit f81e5b098af29c46b5088fc0ba499bd9f75ec10f`
- Bug on best in place functionality
  - inline editing not work after updated element(have to refresh webpage)`

