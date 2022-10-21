Rails.application.routes.draw do
  resources :admins, only: [:index, :show, :create]
  resources :users, only: [:index, :show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  post '/signup', to: "users#create"

  get '/me', to: 'users#show'

  post '/signup', to: 'admins#create'

  get '/me', to: 'admins#show'

end
