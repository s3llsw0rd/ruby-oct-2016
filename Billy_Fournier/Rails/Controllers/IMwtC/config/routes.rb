Rails.application.routes.draw do

  post '/users/create' => 'users#create'
  get '/users/total' => 'users#total'
  resources :users
end
