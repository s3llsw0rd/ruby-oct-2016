Rails.application.routes.draw do
  get "/hello" => "main#hello"
  get "/say/hello" => "main#sayinghello"
  get "/say/hello/joe" => "main#sayinghijoe"
  get "/say/hello/mike" => "main#sayinghimike"
  get "/index" => "main#index"
  get "/times" => "main#times"
  get "/times/restart" => "main#reset"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
