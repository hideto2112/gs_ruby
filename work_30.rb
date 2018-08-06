require 'sinatra'

# get '/' do
#     erb :work_30
# end

get '/' do
    if !params[:name].nil?
        @name = params[:name] + 'さん'
    end
    erb :work_30
end
