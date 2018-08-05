require './common'
require 'sinatra'

get '/' do
    erb :work_32
end

post '/' do
    @name = params[:name]
    @gender = params[:gender]
    @state = params[:state]

    Account.create(
        name: @name,
        gender: @gender,
        state: @state
    )

    @status = '登録が完了しました。'
    erb :work_32
end