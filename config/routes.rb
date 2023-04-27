Rails.application.routes.draw do
  resources :dreams
  root "home#index"
end
