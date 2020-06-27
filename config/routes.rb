Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  get 'scraping_item/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'scraping_item#index'#
 resources :scraping_item

 #devise関連
 root 'pages#index'
  get 'pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
