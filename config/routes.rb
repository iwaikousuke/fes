Rails.application.routes.draw do
  root to: 'questions#index'
  devise_for :users
  resources :questions do
    resources :answers
  end
  resources :questions do
    resources :likes, only: [:create, :destroy]
    end
  resources :users, only: :show
end
