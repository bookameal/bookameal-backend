Rails.application.routes.draw do
  resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  get 'menu_items', to: 'menu_items#index'
  
  resources :categories
  resources :orders
   
   
  # get "menu_items/:id", to: 'menu_items#show'

<<<<<<< HEAD
  # get "menus", to: 'menus#index'

=======
  # Defines the root path route ("/")
  # root "articles#index"
  resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  resources :menus, only: [:index]

  get "menu_items", to: 'menu_items#index'
  get "menu_items/:id", to: 'menu_items#show'

  get "menus", to: 'menus#index'

>>>>>>> 6b389dc80328ad75b1f0b1194585cce4f0b593c2

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
<<<<<<< HEAD
=======
# >>>>>>> cd811fef11d5e992e2ce992a74e79acb048414c4
>>>>>>> 6b389dc80328ad75b1f0b1194585cce4f0b593c2
end
