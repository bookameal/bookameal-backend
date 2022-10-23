Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :menu_items, only: [:index, :show, :create, :update]
  resources :menus, only: [:index]

  get "menu_items", to: 'menu_items#index'
  get "menu_items/:id", to: 'menu_items#show'

  get "menus", to: 'menus#index'

end
