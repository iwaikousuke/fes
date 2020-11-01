Rails.application.routes.draw do
  root to: 'questions#index'
  devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
}
end
