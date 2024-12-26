Rails.application.routes.draw do
  root to: redirect("/login")
  get "/login", to: "sessions#index"

  resources :users
end
