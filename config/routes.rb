Rails.application.routes.draw do
  resources :contacts
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  get 'scraping_item/search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 resources :scraping_item


 root 'pages#index'
  get 'pages/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
