Rails.application.routes.draw do
	root 'users#index'
	post '/users/create' => 'users#create'
	get '/users/new' => 'users#new'
	get 'users/:id' => 'users#show'
	get 'users/:id/edit' => 'users#edit'
	delete 'users/:id' => 'users#destroy'
	patch 'users/:id' => 'users#update'
end
