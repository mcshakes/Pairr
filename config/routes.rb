Rails.application.routes.draw do

  resources :partnerships
  get '/auth/:provider/callback', to: "sessions#create"
  root 'static_pages#home'
  get "static_pages/dashboard", to: "static_pages#dashboard", as: "dashboard"
  resources :users
end
