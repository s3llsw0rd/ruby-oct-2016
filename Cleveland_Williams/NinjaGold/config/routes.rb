Rails.application.routes.draw do
  root 'visitors#index'

  post 'visitors/farm'
  post 'visitors/cave'

  post 'visitors/house'

  post 'visitors/casino'

  get 'visitors/reset'
end
