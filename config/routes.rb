Rails.application.routes.draw do
 
  root 'products#index'

  resources :line_items
  resources :orders
  resources :addresses

  get 'signup', to: 'users#new'
  resources :users, expect:[:new]  
  resources :products

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
