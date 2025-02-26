Rails.application.routes.draw do
  devise_for :users

  resources :favorites
  resources :comments
  resources :jobs

  root "jobs#index"
end
