Rails.application.routes.draw do

  get 'sessions/new'

  root "watches#index"
  resources :watches
  resources :users, except: [:index, :show]
  get  'profile', to: 'users#show', as: :profile
  resource :session 

end
