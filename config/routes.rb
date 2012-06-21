GroningenRb::Application.routes.draw do
  
  resources :editions, only: [:index, :show]
  
  root to: 'home#index'
  
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/signout', to: 'sessions#destroy', as: 'signout'
  
end
