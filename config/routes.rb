Rails.application.routes.draw do
  devise_for :users

  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles
    resource :favorites, only: [:create, :destroy]

  resources :members,only: [:show] do
    collection do
      get :edit
      patch :update
      delete :destroy
      get :confirm_destroy
    end
  end

end
