Rails.application.routes.draw do
  devise_for :users
  resources :challenges, only: [:index, :show] do
    resources :swims, only: [:create]
  end

  root to: 'challenges#index'
end
