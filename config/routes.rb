Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'

  resources :posts do
    collection do
      get 'show_by_mealtime/:mealtime_id', to: 'posts#show_by_mealtime', as: 'show_by_mealtime'
    end
    resources :comments, only: :create
    resources :favorites, only: [:create, :destroy]
  end

  resources :users, only: :show do
    get 'favorites', to: 'favorites#index', on: :member
  end
end
