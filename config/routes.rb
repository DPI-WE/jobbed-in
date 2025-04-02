Rails.application.routes.draw do
  draw(:pwa)
  devise_for :users

  resources :favorites
  resources :comments
  resources :jobs

  get "in/:username", to: "in#show", as: :in

  unauthenticated do
    root "page#landing"
  end

  authenticated :user do
    root "jobs#index", as: :authenticated_root
  end
end
