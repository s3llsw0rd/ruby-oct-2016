Rails.application.routes.draw do
  root :to => redirect('/notes')
  resources :notes, :except => [:new, :edit, :show]
end
