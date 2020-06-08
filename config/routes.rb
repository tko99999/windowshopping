Rails.application.routes.draw do
  get 'scraping_item/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'scraping_item#index'#
end
