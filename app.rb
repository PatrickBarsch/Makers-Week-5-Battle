require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello"
end

get '/secret' do
  "You've found the secret spot"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end