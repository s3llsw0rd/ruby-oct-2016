Rails.application.routes.draw do
  root 'surveys#new'
  post '/create' => 'surveys#create'
  get '/result' => 'surveys#show'
end
