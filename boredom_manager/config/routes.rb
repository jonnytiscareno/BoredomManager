Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :activities

  get '/activities/show', to: 'activities#show'
  get '/search', to: 'activities#get'
  # get '/'

end
