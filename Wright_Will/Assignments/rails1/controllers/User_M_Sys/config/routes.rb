Rails.application.routes.draw do
    root "ums#index"
    get "/users" => "ums#index"
    post "/users" => "ums#create"
    get "/users/new" => "ums#new"
end
