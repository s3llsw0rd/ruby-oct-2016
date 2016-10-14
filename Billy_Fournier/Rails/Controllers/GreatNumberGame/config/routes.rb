Rails.application.routes.draw do
  root 'numbers#index'
  post '/guess' => 'numbers#guess'
  get '/replay' => 'numbers#replay'
end
