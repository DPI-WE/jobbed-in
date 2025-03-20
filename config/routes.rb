Rails.application.routes.draw do
  devise_for :users

  resources :favorites
  resources :comments
  resources :jobs
  
  unauthenticated do
    root "page#landing"
  end

  authenticated :user do
    root "jobs#index", as: :authenticated_root
  end
end
