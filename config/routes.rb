Rails.application.routes.draw do
  devise_for :users
  resources :challenges, only: [:index, :new, :create]

  root to: 'challenges#index'
end
