Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :attachmes
  # /posts/1/comments/4
  resources :posts do
    resources :comments
  end
  root 'pages#home'
  resources :projects do 
    resources :attachmes

  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
