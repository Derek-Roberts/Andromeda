Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :articles
  resources :users do
    resources :friends, :shallow => true
  end
  get 'users/:id' => 'users#show'
end
