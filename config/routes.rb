Rails.application.routes.draw do
  root "home#index"

  get '/search', to: "home#search"
  
  resources :procedures_providers
  resources :providers
  resources :destinations
  resources :procedures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
