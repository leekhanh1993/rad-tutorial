Rails.application.routes.draw do
  
  resources :users
  
  get 'data/new'
  get 'users/new'
  root 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/signup' => 'users#new'
  post '/signup',  to: 'users#create'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
