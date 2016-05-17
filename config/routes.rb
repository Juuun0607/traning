Rails.application.routes.draw do
  devise_for :users
  root 'trains#index'
  get 'trains/:id' => 'trains#show'
end
