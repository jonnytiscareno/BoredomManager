Rails.application.routes.draw do
  root 'home#index'
  resources :activities

  get '/activities/show', to: 'activities#show'

end
