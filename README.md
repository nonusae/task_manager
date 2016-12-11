# ShipnityTest App

 ## Key requirement: create web app that can crate task edit and comment

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
- Some Bug on adding comment form in task dropdown 
  - Not working properly when submit second comment
- Bug on best in place functionality
  - inline editing not work after updated element(have to refresh webpage)
