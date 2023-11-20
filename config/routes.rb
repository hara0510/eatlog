Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    collection do
      get 'show_by_mealtime/:mealtime_id', to: 'posts#show_by_mealtime', as: 'show_by_mealtime'
    end
  end
end
