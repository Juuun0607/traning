Rails.application.routes.draw do
  get 'trains' => 'trains#index'
  get 'trains/:id' => 'trains#show'
end
