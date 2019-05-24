Rails.application.routes.draw do
  devise_for :users

  root to: 'products#index'

  resources :products do
    post :pay, on: :member
  end
end
