Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :articles
  resources :users do
    resources :friendships, :shallow => true
    resources :article_users, :shallow => true
  end
  get 'users/:id' => 'users#show'
end
