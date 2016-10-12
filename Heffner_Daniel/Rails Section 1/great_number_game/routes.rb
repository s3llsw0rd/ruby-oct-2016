Rails.application.routes.draw do
  root 'games#loop'
  post '/guess' => 'games#guess'
  get '/reset' => 'games#reset'
end
