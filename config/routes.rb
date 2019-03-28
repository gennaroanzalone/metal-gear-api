Rails.application.routes.draw do
  resources :games
  resources :characters
  resources :gears
  root to: 'games#index'
end
