Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :users, only: [:show] do
    resources :profiles, only: [:show, :new, :create]
  end

  resources :posts,    only: [:show]
  resources :profiles, only: [:show]

  resources :comments, only: [:create] do
    member do
      get :reply
      post :create_reply
    end
  end
end
