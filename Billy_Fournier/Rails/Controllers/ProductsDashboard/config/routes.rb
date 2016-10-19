Rails.application.routes.draw do
  resources :products
  root 'products#index'
  post '/comments/:id' => 'comments#create'
end
