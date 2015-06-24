Rails.application.routes.draw do

  post "paired", to: "partnerships#paired"
  post "unpaired", to: "partnerships#unpaired"

  get "partnership/:id", to: "partnerships#show", as: "partner"

  get '/auth/:provider/callback', to: "sessions#create"
  root 'static_pages#home'
  get "static_pages/dashboard", to: "static_pages#dashboard", as: "dashboard"

  resources :users
end
