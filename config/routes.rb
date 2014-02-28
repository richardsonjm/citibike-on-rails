require 'sidekiq/web'

CitibikeOnRails::Application.routes.draw do
  resources :destinations

  resources :origins

  resources :trips

  resources :date_lookups

  resources :stations

  root 'trips#new'

  mount Sidekiq::Web, at: '/sidekiq'

end
