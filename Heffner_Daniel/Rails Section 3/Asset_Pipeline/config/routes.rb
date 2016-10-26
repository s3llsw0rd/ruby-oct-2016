Rails.application.routes.draw do
  root :to => redirect('/pictures')
  get '/pictures' => 'pictures#index'
end
