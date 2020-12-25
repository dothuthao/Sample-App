Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  get 'static_pages/home'
  get '/help', to: 'static_page#help'
  get 'static_pages/about'
  get '/signup', to: 'users#new'
  get '/users/:id', to:'users#show'
  get'/login',to:'sessions#new'
  get '/users', to: 'users#index'
  get '/users/:id/edit', to: 'users#edit'
  put '/users/:id', to:'users#update'
  post '/users', to: 'users#create'
  post'/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'


  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
end
