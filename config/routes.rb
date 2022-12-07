Rails.application.routes.draw do
  
  
  
  resources :brands
  
  
  resources :devices do
    collection do
      get :showallphonesbybrand
      get :searchbynames
      get :availablephone
      get :searchbypricerange
      
    end
  end
  resources :specifications do
    collection do
      get :showspecification
      get :showphonedetails
    end
  end

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
