require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
    "<p> Boil 'em, mash 'em, stick 'em in a stew<p>"
  end

  get '/dice' do
    dice_roll = rand(1..6)
    { rill: dice_roll }.to_json
  end

  get '/add/1/2' do
    sum = 1 + 2
    { results: sum }.to_json
  end
  
end

run App
