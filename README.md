# ChurchApp OAuth Example - Ruby

An example implementation of the ChurchApp OAuth flow, using Sinatra and the OAuth2 Gem.

* Sinatra: https://github.com/sinatra/sinatra
* OAuth2: https://github.com/intridea/oauth2

In order to use this application you must add a config.yml file with the following details:

````ruby
  client_secret: YOUR_CLIENT_SECRET
  client_id: YOUR_CLIENT_ID
  client_endpoint: 'https://yourchurch.churchapp.co.uk'
````

Once your config.yml is setup run `bundle install` and then `rackup` to see the application in action.
