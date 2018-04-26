Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :activities do
    resources :reviews, except: [:show, :index]
  end 

  resources :locations
  resources :users
 
  get '/activity/:id', to: 'activities#index', as: '/activity/rvw'
  get '/user/:id/activities', to: 'activities#my_index', as: 'my_activities'
  get '/activities/:id', to: 'activities#index'
  get '/activities/show', to: 'activities#show'
  get '/search', to: 'activities#get'
  patch '/users/:id/update', to: 'users#update', as: '/users/update'
  patch '/users/:id/updateLoc', to: 'users#update_location', as: '/users/updateLoc'

end
