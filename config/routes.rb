Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :meals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  post '/process_payment', to: 'payments#process_payment', as: 'payment'
end
