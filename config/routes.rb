Rails.application.routes.draw do
    resources :products
    resources :users
    resource :session
    
    namespace :admin do
      resources :products
      
      root to: 'products#index'
    end
    
    root to: 'products#index'
end
