Rails.application.routes.draw do
  resources 'sessions'
  resources 'users'
  resources 'secrets'
  resources 'likes'
end
