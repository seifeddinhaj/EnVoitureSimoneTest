Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "potato_prices#index"
  resources :potato_prices, only: [:index] do
    collection do
      get 'best_gain' # Pour calculer le meilleur gain possible
    end
  end
end
