Rails.application.routes.draw do
  resources :empdata
  #get 'home/index'
  root 'home#home'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
