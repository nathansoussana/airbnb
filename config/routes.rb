Rails.application.routes.draw do
  devise_for :users
  root to: "equipment#index"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get "equipments", to: "equipments#index", as: :equipments
  #post "equipments", to: "equipments#create"
  #get "equipments/new", to: "equipments#new", as: :new_equipment
  #get "equipments/:id/edit", to: "equipments#edit", as: :edit_equipment
  #get "equipments/:id", to: "equipments#show", as: :equipment
  #patch "equipments/:id", to: "equipments#update"
  #delete "equipments/:id", to: "equipments#destroy"
  resources :equipment

end
