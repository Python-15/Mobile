Rails.application.routes.draw do
   
  get "/brand", to: "brand#show"
  get "/device", to: "device#show"
  post "/brand", to: "brand#create"

  resources :brands
  resources :devices
  resources :specifications
  get "/specifications", to: "specification#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
