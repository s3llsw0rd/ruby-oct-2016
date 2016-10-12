Rails.application.routes.draw do
	get '/' => 'main#index'
	post '/' => 'main#create'
	get '/result/' => 'main#result' 
end
