Nixie::Application.routes.draw do
  get "logout" => 'sessions#destroy', :as => 'logout'
  get "login" => 'sessions#new', :as => 'login'
  get "signup" => 'users#new', :as => 'signup'
  get "user" => 'users#show', :as => 'user'
  get "users" => 'users#index', :as => 'users'
  post "users" => 'users#create', :as => 'create_user'
  root :to => 'pages#index'
end
