Rails.application.routes.draw do
  resources :links
  root 'links#new'
  get '/x/:slug', to: 'links#show', as: :short
end
