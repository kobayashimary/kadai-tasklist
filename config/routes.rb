Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'toppages/index'
  root to: 'toppages#index'
  
  get 'signup',to: 'users#new'
  resources :users,only:[:index,:show,:new,:create]

  resources :tasks
end