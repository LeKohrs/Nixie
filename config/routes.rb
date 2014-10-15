Nixie::Application.routes.draw do
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  
  get "logout" => 'sessions#destroy', :as => 'logout'
  get "login" => 'sessions#new', :as => 'login'
  
  get "signup" => 'users#new', :as => 'signup'
  post "sessions" => 'sessions#create', :as => 'sessions'
  
  get "users" => 'users#index', :as => 'users'
  post "users" => 'users#create', :as => 'create_user'
  get "user" => 'users#show', :as => 'user'
  get "edit_user" => 'users#edit', :as => 'edit_user'
  put "user" => 'users#update', :as => 'update_user'
  
  get "dashboard" => 'pages#dashboard'
  root :to => 'pages#index'
end
