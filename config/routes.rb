Rails.application.routes.draw do
  devise_for :users
  root to: "equipment#index"
  get "/about", to: "pages#about"
  get 'users/:id', to: 'users#show', as: 'user'
  get '/my_offers', to: 'equipment#my_offers'
  get '/my_rented_equipment', to: 'equipment#my_rented_equipment', as: 'my_rented_equipment'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :equipment do
  resources :bookings
  end
end
