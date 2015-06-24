Rails.application.routes.draw do

  resources :partnerships
  get '/auth/:provider/callback', to: "sessions#create"
  root 'static_pages#home'
  resources :matches
  resources :users
  # root 'static_pages#home' at some point need to root here with unauthorized user
end
