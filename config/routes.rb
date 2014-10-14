Nixie::Application.routes.draw do
  get "logout" => 'sessions#destroy', :as => 'logout'
  get "login" => 'sessions#new', :as => 'login'
  get "signup" => 'users#new', :as => 'signup'
  get "user" => 'users#show', :as=> 'user'
  root :to => 'pages#index'
end
