Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users, only: [:show] do
    resources :profiles, only: [:show, :new, :create]
    resources :comments, only: [:index]
  end

  resources :posts, only: [:show] do
    resources :comments, only: [:show, :new, :create]
  end

  resources :profiles, only: [:show] do
    resources :comments, only: [:show, :new, :create]
  end

  resources :comments, only: [:create]
end
