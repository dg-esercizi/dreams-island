Rails.application.routes.draw do
  resources :boats
  root "home#index"
end
