Rails.application.routes.draw do
  resources :movies, only: [:index, :show] do
    collection do
      resources :genres, only: [:index, :show]
    end
  end
end
