Rails.application.routes.draw do
  get 'nices/create'
  get 'nices/destroy'
  root to: 'questions#index'
  devise_for :users
  resources :users, only: :show

  resources :questions do
    resources :answers
  end

  resources :questions do
    resources :likes, only: [:create, :destroy]
  end

  resources :answers do
    resources :nices, only: [:create, :destroy]
  end
end
