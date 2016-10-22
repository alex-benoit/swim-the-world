Rails.application.routes.draw do
  get 'strava/index'

  devise_for :users
  resources :challenges, only: [:index, :show] do
    resources :swims, only: :create
  end
  get 'dashboard', to: 'pages#dashboard'

  root to: 'challenges#index'
end
