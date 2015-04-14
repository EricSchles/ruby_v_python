require 'sinatra'
require 'erb'

get "/:name" do
  erb :index, :locals => {:name => params[:name]}
end

get "/" do
  erb :index, :locals => {:name => false}
end
