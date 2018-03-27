---
author: Leon Schürmann, Daniel Schäfer
title: flatr -- living community management
date: March 27, 2018
---

## Motivation

----

- we both live in shared flats
- these get pretty messy from time to time
- old solution don't work very well

----

![Cleaning Schedule example](http://lifeasmama.com/wp-content/uploads/2016/02/CleaningSchedule-e1454962083999-1024x791.jpg)

----

Disadvantages of cleaning schedules

- missing overview
- requires a pen on hand
- can't be checked remotely
- _"I'll do it Tomorrow / on Sunday!"_

----

The solution: `flatr`

- portable mobile & web-application
- can be checked from any smartphone
- sends reminders
- tasks need to be done in a short timeframe
- fair distribution of tasks

----

1. A user gets a push notification on his / her smartphone _(not implemented)_
   - contaning a specifc timeframe
2. The task gets done
3. Task gets marked as done in the application

A penalty for overdue tasks could be easily introduced

----

Highly configurable

- Title
- Description
- Frequency in times / week
- Completion time in hours
- Users per Task

Task overview can be printed as PDF (through the browser print menu)

----

Invite system

- not everyone should be able to join a flat
- first user can invite other users
- these users get a Email with an invite link
- then they are able to signup for a new account

----

Project organization

- Team GitHub organisation: [https://github.com/flatrapp](https://github.com/flatrapp)
- API documentation in `RAML`: [https://flatrapp.github.io/api](https://flatrapp.github.io/api)
- 

----

## Backend

----

## Frontend

----

- using Bootstrap v4 for best UI experience
- implements `flatr` `JSON-API` according to specification
- reference implementation
- should work in any modern browser (uses ES5)

----

![Elm](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Elm_logo.svg/480px-Elm_logo.svg.png)

----

- completely pure functional language
- strong typesystem
- compiles to JavaScript
- extremly fast
- very similar to Haskell

----

Benefits of using `Elm`

- if it compiles, it works!
- a function with the same input will produce the same output
- build the HTML with Elm functions
- immutable state handling
- clear and obvious data flow

----

Typesafety in `HTML`:

```haskell
view : Html msg
view =
  Grid.container []
    [ Grid.row []
      [ Grid.col []
        [ text "This is valid!"
        ]
      ]
    ]
```

----

Typesafety in `HTML`:

```haskell
view : Html msg
view =
  Grid.container []
    [ Grid.col []
      [ Grid.row []
        [ text "This is invalid!"
        ]
      ]
    ]
```

----

Disadvantages of using `Elm`

- fairly young language, still developing
- no widespread usage, less support
- requires to relearn basic programming concepts
- takes long to get used to
- not made for _rapid prototyping_

----

`Elm` basics:

```haskell
main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }
```

```haskell
model : Model
model = ...

update : Msg -> Model -> Model
update msg model = ...

view : Model -> Html Msg
view = ...
```

----

Should you choose Elm?

- Yes
  - if you like stable software that has few bugs
  - if you like typesafety and a good compiler
  - want to get desktop-class programming on the web
- No
  - if you're in a hurry
  - if the software is just a prototype
  - if you need to work with a lot of JavaScript code
  - _if you need to do a Web assignment_

----

## Demo

----

## TODO & Future Plans

----

TODO

- Sending Emails is still buggy
- Further improve the tasks assignment algorithm
- 

----

Future Plans

- create a Android & iOS native App
- Add more modules
  - Shopping List
  - Expenses

----

This presentation is free & open source

![CC BY-SA 4.0](https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/CC-BY-SA_icon.svg/320px-CC-BY-SA_icon.svg.png)

Download at [https://github.com/flatrapp/documentation](https://github.com/flatrapp/documentation)
