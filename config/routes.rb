Rails.application.routes.draw do
  root 'trains#index'
  get 'trains/:id' => 'trains#show'
end
