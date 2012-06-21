GroningenRb::Application.routes.draw do
  
  resources :editions, only: [:index, :show, :new]
  
  root to: 'home#index'
  
  match '/auth/failure', to: redirect('/')
  match '/auth/:provider/callback', to: 'sessions#create'
  match '/signout', to: 'sessions#destroy', as: 'signout'
  
end
