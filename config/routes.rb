GroningenRb::Application.routes.draw do
  
  resources :editions, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    post    '/attend',    to: 'attendances#create',   as: :attend
    delete  '/unattend',  to: 'attendances#destroy',  as: :unattend
  end
  resources :users, only: [:index, :update]
  
  root to: 'home#index'
  
  match '/auth/failure', to: redirect('/')
  match '/auth/:provider/callback', to: 'sessions#create'
  
  get '/account', to: 'accounts#edit',    as: 'account'
  get '/signout', to: 'sessions#destroy', as: 'signout'
  
end
