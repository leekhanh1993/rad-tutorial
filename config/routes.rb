Rails.application.routes.draw do
  
  
  resources :users
  get '/signup' => 'users#new'
  post '/signup',  to: 'users#create'
  get 'users/new'

  
  get 'data/new'

  
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
 

  #Session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 

  #Activate Account
  resources :account_activations, only: [:edit]

  root 'static_pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
