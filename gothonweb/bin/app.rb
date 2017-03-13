require 'sinatra'

set :port, 8082
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do
    return 'Hello world this is my first ruby webpage'
end

get '/hello/' do
    greeting = params[:greeting] || "Hi There"
    erb :index, :locals => {'greeting' => greeting}
end
