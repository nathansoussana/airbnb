Rails.application.routes.draw do
  get 'equipments/new'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "equipments", to: "equipments#index", as: :equipments
  get "equipments/new", to: "equipments#new", as: :new_equipment
  post "equipments", to: "equipments#create"
  #get "equipments/:id", to: "equipments#show", as: :restaurant
  #get "equipments/:id/edit", to: "equipments#edit", as: :edit_equipment
  #patch "equipments/:id", to: "equipments#update"
  #delete "equipments/:id", to: "equipments#destroy"

end
