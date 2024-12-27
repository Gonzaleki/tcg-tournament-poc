Rails.application.routes.draw do
  # Route to home#index if session exists
  constraints(SessionConstraint) do
    root 'home#index', as: :authenticated_root
  end

  get "/login", to: "sessions#index"

  resources :users
  resources :sessions, only: [ :create, :destroy ]
  resources :home, only: [ :index ]

  root to: redirect("/login"), as: :unauthenticated_root
end
