Rails.application.routes.draw do
  namespace :profiles do
    get 'technologies/index'
  end
  root to: 'profiles#index'

  resources :profiles, only: [:edit, :update] do 
    resources :technologies, only: [:index, :create], module: :profiles
    resources :skills, only: [:create]
  end

  resources :skills, only: [:destroy]
end