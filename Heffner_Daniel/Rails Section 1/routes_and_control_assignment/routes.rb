Rails.application.routes.draw do
  root 'say#index'
  get '/hello' => 'say#dojo'
  get '/say/hello' => 'say#hello'
  get '/say/hello/joe' => 'say#joe'
  get '/say/hello/michael' => 'say#michael'
  get '/times' => 'times#index'
  get '/times/restart' => 'times#reset'
end
