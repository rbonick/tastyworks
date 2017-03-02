# Tastyworks Coding Challenge
### Setup and Startup

This application has two part: Ruby on Rails, and Ember. Both must be running for the 
application to work.

#### Rails
First, ensure you are in the root of the directory (`/tastyworks`). This also assumes you
have Ruby installed already.

Note: `csv:import` takes a while. Grab a coffee, watch some TED Talks.

```
bundle install
bundle exec rake db:migrate
bundle exec rake csv:import 
rails s
```

#### Ember
These steps assume you have Ember already installed. If you do not, you can get Ember
by running `npm install -g ember-cli`.

```
cd app/assets/javascripts/emberjs
npm install
bower install
ember server
```

### Using the application
To use, hit [http://localhost:4200/](http://localhost:4200/), where you can search for 
a stock. Clicking a stock symbol from this screen will take you to the history for that
stock. If you would llke to visit the history page directly, the format is 
[http://localhost:4200/history/:symbol](http://localhost:4200/history/:symbol)