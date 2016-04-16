Rails.application.routes.draw do

 root 'abouts#index'
  resources :subjects
  resources :colleges
  resources :qpapers
  resources :assignments
  resources :requests
  resources :examnotes
  resources :abouts
  resources :practicals

  resources :sessions, only: [:create, :destroy]
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

end
