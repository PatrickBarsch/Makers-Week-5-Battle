require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  %Q|You've found the secret spot!!!|
end

get '/cat' do
  erb(:index)
end