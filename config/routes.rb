Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts do
    collection do
      get 'show_by_mealtime/:mealtime_id', to: 'posts#show_by_mealtime', as: 'show_by_mealtime'
    end
  end
end
