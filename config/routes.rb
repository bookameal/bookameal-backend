Rails.application.routes.draw do

      resources :users, only: [:index, :show, :create]
      resources :orders
      resources :menu_items, only: [:index, :show, :create, :update, :destroy] 
      resources :categories
      resources :menus, only: [:index]
      
      #Authentication routes
      post '/signup', to: "users#create_user"
      post '/login', to: "users#login_user"
      delete '/logout', to: "users#logout_user"

end
