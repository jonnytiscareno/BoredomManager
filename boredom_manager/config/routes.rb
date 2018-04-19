Rails.application.routes.draw do
  root 'home#index'
  resources :activities

 #  get '/pokemons/new', to: 'pokemons#new'
  get '/activities/show', to: 'activities#show'


end
