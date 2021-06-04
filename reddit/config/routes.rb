Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :session

  resources :users

  resources :posts, only: [:new, :show, :create, :destroy, :edit, :update] do
    resources :subs, only: [:show]
    resources :users, only: [:edit, :update]
  end

  resources :subs do
    resources :users, only: [:edit]
  end

end
