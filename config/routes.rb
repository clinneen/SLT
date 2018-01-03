Rails.application.routes.draw do
  root to: 'home#index'

  get '/home', to: 'home#index', as: 'home'
  get '/home/settings', to: 'home#settings', as: 'home_settings'

  get '/stores', to: 'stores#index', as: 'stores'
  get '/stores/results', to: 'stores#results', as: 'store_search'
  get '/stores/:id', to: 'stores#show', as: 'store'

  get '/outages', to: 'outages#index', as: 'outages'
  get '/outages/results', to: 'outages#results', as: 'outage_search'
  get '/outages/new', to: 'outages#new', as: 'new_outage'
  get '/outages/:id', to: 'outages#show', as: 'outage'
  get '/outages/:id/edit', to: 'outages#edit', as: 'edit_outage'
  post '/outages', to: 'outages#create', as: 'create_outage'
  post 'outages/:id', to: 'outages#update', as: 'update_outage'
  patch 'outages/:id', to: 'outages#update'
  put 'outages/:id', to: 'outages#update'

end
