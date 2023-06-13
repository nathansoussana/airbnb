Rails.application.routes.draw do
  devise_for :users
  root to: "equipment#index"
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :equipment do
  resources :bookings
  end
end
