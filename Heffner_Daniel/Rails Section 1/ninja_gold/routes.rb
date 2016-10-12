Rails.application.routes.draw do
  root 'rpg#index'
  post '/process' => 'rpg#handle'
  post '/reset' => 'rpg#reset'
end
