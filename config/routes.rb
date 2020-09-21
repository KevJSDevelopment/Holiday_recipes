Rails.application.routes.draw do
  resources :ingredients
  resources :recipes
  resources :holidays

  get "/", to: "holidays#homepage", as: "homepage"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
