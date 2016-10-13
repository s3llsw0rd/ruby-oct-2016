Rails.application.routes.draw do
    root "ums#index"
    get "/users" => "ums#index" , as: :users
    post "/users" => "ums#create" , as: :create_user
    get "/users/new" => "ums#new", as: :new_user
    get "/users/:id" => "ums#show", as: :show_user
    get "/users/:id/edit" => "ums#edit", as: :edit_user
    patch "/users/:id" => "ums#update", as: :update_user
    delete "/users/:id" => "ums#destroy", as: :delete_user
end
