require 'sinatra'
require 'sinatra/reloader'
require 'data_mapper'
require './model'

get '/' do
    @journals = Journal.all
    erb :index
end

get '/journals/new' do
    erb :journals_new
    
end

get '/create' do
    Journal.create(
    title: params[:title],
    weather: params[:weather],
    feeling: params[:feeling],
    content: params[:content]
    )
    erb :create
end

get '/show' do
    erb :show
end
