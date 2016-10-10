Rails.application.routes.draw do
  root :to => 'users#index'

  get 'users/' => 'users#index'

  get 'users/new' => 'users#new'

  get 'users/create' => 'users#create'

  get 'users/total' => 'users#total'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'

end
