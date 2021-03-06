Rails.application.routes.draw do
  get 'messages/create'
  get 'hangouts/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'hangouts#index'
  resources :messages, only: [:create]
end
