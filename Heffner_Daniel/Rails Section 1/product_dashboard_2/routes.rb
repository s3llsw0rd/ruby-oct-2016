Rails.application.routes.draw do
  root :to => redirect('/products')
  resources 'products'
  resources 'comments', only: [:index, :create] 
end
