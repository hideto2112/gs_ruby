require 'sinatra'

get '/' do
    erb :work_31
end

post '/' do
    @name = params[:name] + 'さん'
    erb :work_31
end