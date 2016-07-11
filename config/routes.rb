Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :users do
    resources :friends, :shallow => true
  end

  get 'users/:id' => 'users#show'

  root "home#index"
end
