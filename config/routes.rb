Rails.application.routes.draw do
  resources :ranking2016s
  resources :ranking2017s
  resources :golfers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "golfers#index"
end
