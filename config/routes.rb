Rails.application.routes.draw do
  resources :food_items
  resources :dishes

  resources :ingredients, only: [:create, :update, :destroy]
end
