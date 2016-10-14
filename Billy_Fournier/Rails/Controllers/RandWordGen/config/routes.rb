Rails.application.routes.draw do
  root 'words#index'
  get '/words/generate' => 'words#generate'
end
