Rails.application.routes.draw do
  devise_for :users
  root 'trains#index'
  resources :trains do
    resources :reviews
  end
end
