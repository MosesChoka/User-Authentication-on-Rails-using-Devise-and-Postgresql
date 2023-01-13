Rails.application.routes.draw do
  devise_for :users
  resources :data_sessions
  root "data_sessions#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
