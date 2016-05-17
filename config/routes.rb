Rails.application.routes.draw do
  devise_for :users
  root 'trains#index'
  resources :trains do
    resources :reviews
    member do
      get 'search'
    end
  end
end
