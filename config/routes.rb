GroningenRb::Application.routes.draw do
  
  resources :editions, only: [:index, :show]
  
  root to: 'home#index'
  
end
