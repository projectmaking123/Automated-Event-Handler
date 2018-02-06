Rails.application.routes.draw do
    resources :products
    resources :users
    resource :session
    
    root to: 'products#index'
end
