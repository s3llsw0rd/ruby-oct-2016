Rails.application.routes.draw do
    root "ums#index"
    get "/users" => "ums#index"
    get "/users/new" => "ums#new"
end
