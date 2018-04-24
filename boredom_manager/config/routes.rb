Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :activities
  resources :locations
  resources :users

  get '/activities/show', to: 'activities#show'
  get '/search', to: 'activities#get'
  patch '/users/:id/update', to: 'users#update', as: '/users/update'
  patch '/users/:id/updateLoc', to: 'users#update_location', as: '/users/updateLoc'

end
