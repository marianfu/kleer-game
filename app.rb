require 'sinatra'

get '/' do
	erb :colores
end

post '/comprobar' do
  "ok"
end
