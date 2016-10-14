Rails.application.routes.draw do
  resources :rpgs
  root 'rpgs#index'
  post '/rpgs/find' => 'rpgs#find'
end
