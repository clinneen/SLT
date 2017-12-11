Rails.application.routes.draw do
  resources :outages
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/test', to: 'stores#search', as: 'store_search'
  get '/test/result', to: 'stores#result'
end
