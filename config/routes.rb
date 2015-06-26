Rails.application.routes.draw do

  get 'sessions/new'

  root "watches#index"
  resources :watches
  resources :users, except: :index
  resource :session 

end
