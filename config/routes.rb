GroningenRb::Application.routes.draw do
  
  resources :editions, only: [:index, :show, :new, :create, :edit, :update]
  resources :users, only: [:index]
  
  root to: 'home#index'
  
  match '/auth/failure', to: redirect('/')
  match '/auth/:provider/callback', to: 'sessions#create'
  
  get '/account', to: 'account#show',     as: 'account'
  put '/account', to: 'account#update',   as: 'account'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  
end
