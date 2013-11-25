require 'rubygems'
require 'sinatra'
require 'oauth2'

configure do
  config = YAML::load(File.open('config.yml'))
  set :client_secret, config['client_secret']
  set :client_id, config['client_id']

  options = {
    :site => config['client_endpoint'],
    :authorize_url => '/oauth/authorize',
    :token_url => '/oauth/token'
  }

  set :client, OAuth2::Client.new(settings.client_id, settings.client_secret, options)
end

get '/' do
	erb :index
end

get '/authorize' do
  redirect settings.client.auth_code.authorize_url
end

get '/token' do
  response = settings.client.auth_code.get_token params[:code]
  erb "Access Token: #{response.token}"
end
