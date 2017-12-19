Rails.application.routes.draw do
  root to: 'home#index'

  get '/home', to: 'home#index', as: 'home'
  get '/home/settings', to: 'home#settings', as: 'home_settings'

  get '/stores', to: 'stores#index', as: 'stores'
  get '/stores/results', to: 'stores#results', as: 'store_search_results'
  get '/stores/:id', to: 'stores#show', as: 'store'
  post '/stores/results', to: 'stores#results', as: 'store_search'

  get '/outages', to: 'outages#index', as: 'outages'

end
