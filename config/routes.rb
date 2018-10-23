Rails.application.routes.draw do
  resources :dummies
  resources :foods
  devise_for :users
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
end
