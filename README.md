# Introduction

Starter flutter template for newbie developers

Dart:  2.15.0
Flutter:  2.10.4

# Project structure:

```
lib
    app
        data
            data_interfaces
            local_data
            remote_data
        domain
            business_interfaces
            entities
            usecases
        presentation
            navigator
            pages
            widgets
    cores
        app_modules.dart
        const.dart
        extensions.dart
        theme.dart
```
# Getting Started

You are welcome to use this template for your future projects.

# Goals

This template inspired by clean_architecture.
It allows you to start a flutter project with testable, maintaned and expanded code.

# Design explanation

## app folder
This folder includes all features in the app. It has 3 subfolders:
- data
- domain
- presentation

### Data folder contains all classes and functions for getting data from local storage or network.
- local storage
	- Shared preferences
	- Sqlite
- remote storage
	- data from apis
- interfaces
	- include all your functions is used in data folder.

### Domain folder is all your business logic.
- entities
	- this is where you write all your models and those methods
- usecases
	- This has testable class which extend from business_interface.
	- Each method in this folder irrelevant flutter. It is pure dart, only care about params and value return.
- business_interfaces
	- Like in data folder, your abstract classes in here define all features  in your app.

### Presentation
- navigator
	- I strongly suggest navigate with name.
- pages
	- Contains your screens, controllers and repositories.
	- Each screen has a controller. 
	- Each feature has a repository which is store your data flow and connect with data layer and domain layer
- widgets
	- Common widgets used in app

