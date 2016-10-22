Rails.application.routes.draw do
  devise_for :users
  resources :challenges, only: [:index, :show] do
    resources :swims, only: [:create, :destroy]
  end
  get 'dashboard', to: 'pages#dashboard'

  root to: 'challenges#index'
end
