Rails.application.routes.draw do
  resources :orders
  resources :specific_menus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
<<<<<<< HEAD
  resources :menu_items, only: [:index, :show, :create, :update]
  resources :menus, only: [:index]

  get "menu_items", to: 'menu_items#index'
  get "menu_items/:id", to: 'menu_items#show'

  get "menus", to: 'menus#index'

=======

  resources :users, only: [:index, :show, :create]
  
  #Authentication routes
  post '/signup', to: "users#create_user"

  post '/login', to: "users#login_user"

  delete '/logout', to: "users#logout_user"

  #Menu
  # post '/create', to: "menus#create_menus"

  # get '/menus', to: "menus#get_menus"

  # put '/menus/:menu_id/update', to: "menus#update_menu"

  # delete '/menus/:menu_id/destroy', to: "menus#delete_menus"
>>>>>>> cd811fef11d5e992e2ce992a74e79acb048414c4
end
