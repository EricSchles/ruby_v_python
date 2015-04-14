require 'sinatra'

get '/:name' do 
  "Hello #{params['name']}"
end
