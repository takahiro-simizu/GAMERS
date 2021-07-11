Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, only: [:new, :create, :index, :show, :destroy]
    resource :favorites, only: [:create, :destroy]

  resources :users
end
