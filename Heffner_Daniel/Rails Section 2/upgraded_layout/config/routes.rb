Rails.application.routes.draw do
  root 'dojo#index'
  get '/seattle' => 'dojo#seattle'
end
