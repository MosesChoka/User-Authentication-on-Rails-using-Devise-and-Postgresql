Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :data_sessions
  get "/pages/:page" => "pages#show"
  root "pages#show", page: "home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
