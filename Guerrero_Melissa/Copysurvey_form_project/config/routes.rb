Rails.application.routes.draw do
  root 'main#index'
  post '/'=> 'main#create'
  get '/result/' => 'main#result'
end
