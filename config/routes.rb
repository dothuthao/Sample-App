Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get '/users/new', to: 'users#new'
  get '/users/:id', to:'users#show'
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
end
