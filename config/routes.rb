Rails.application.routes.draw do
  resources :us_events
  get 'nextevents', to: 'nextevents#index' 
  get 'nextevents/nextPGA', to: 'nextevents#nextPGA' 
  get 'queries', to: 'query#run'
  get '/home', to: 'home#home'
  root 'home#home'

  get 'query/results'

  resources :ranking2016s
  resources :ranking2017s
  resources :golfers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "golfers#index"
end
