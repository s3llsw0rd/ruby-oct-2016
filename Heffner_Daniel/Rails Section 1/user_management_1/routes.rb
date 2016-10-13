Rails.application.routes.draw do
  root :to => redirect('/users')
  get '/users' => 'users#index'
end
