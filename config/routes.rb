Rails.application.routes.draw do
  resources :authors
  resources :articles
  resources :categoroys
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
