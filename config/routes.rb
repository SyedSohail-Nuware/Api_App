Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user
  post '/login', to: 'authentication#login'
  resources :order
  resources :product
  resources :admin_user
  get '/syed', to: 'order#place_order'
end
