Rails.application.routes.draw do
  root 'home#index'
  resources :activities

  get '/activities/show', to: 'activities#show'
  get '/search', to: 'activities#get'
  # get '/'

end
