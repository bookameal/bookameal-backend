Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

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
