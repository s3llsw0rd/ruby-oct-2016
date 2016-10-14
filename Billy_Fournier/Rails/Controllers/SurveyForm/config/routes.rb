Rails.application.routes.draw do
  resources :dojos
  root 'dojos#index'
  post '/dojos/create' => 'dojos#create'
  get '/result' => 'dojos#result'
end
