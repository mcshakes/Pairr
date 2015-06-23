Rails.application.routes.draw do
  get 'static_pages/home'
  # root 'static_pages#home' at some point need to root here with unauthorized user
end
