Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show, :update, :destroy, :follow, :unfollow]
    resource :session, only: [:create, :destroy]
    resources :articles, only: [:show, :create, :update, :index, :destroy, :howl, :unhowl] do
      resources :comments, only: [:index]
    end
    resources :chunks, only: [:create, :show, :destroy]
    resources :comments, only: [:create, :destroy, :update, :howl, :unhowl]
  end
end
