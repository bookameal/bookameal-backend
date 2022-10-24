Rails.application.routes.draw do
  resources :categories
  resources :orders
  #resources :specific_menus
  resources :menu_items, only: [:index, :show, :create, :update, :destroy]
  
  get "menu_items", to: 'menu_items#index'
  get "menu_items/:id", to: 'menu_items#show'

  get "menus", to: 'menus#index'


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
end
