# README

This is a sample Rails API app to serve as a web service for a client side resident data sync app. 

Note: The app only serves the API, no view, or any asset.

### Requirments

* Ruby > 2.3.x

* Rails > 5.0.x

* sqlite3


### Setup

```
git clone git@github.com:somethvictory/sync_assignment.git
cd sync_assignment
bundle install
```

### Database setup

As this is an assignment which required to load existing data from the sqlite, so there won't be any migration. To setup the database:

```
rake db:create

rails db
```

in sqlite3 console, run the following command:

```
sqlite> .read sync.sql
sqlite> .quit
```

### Startup server

```
rails server
```

### Spec

To run all specs in the project:

```
rake
```
or

```
rspec
```


