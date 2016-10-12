Rails.application.routes.draw do
    root "ums#index"
    get "/users" => "ums#index"
end
