Rails.application.routes.draw do
  root :to => redirect('/users')
  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  patch '/users/:id' => 'users#update'
  get '/users/:id' => 'users#show'
  delete '/users/:id' => 'users#destroy'
  get '/users/:id/edit' => 'users#edit'
end
