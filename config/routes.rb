Rails.application.routes.draw do
  devise_for :users

  resources :users, :only => [:show, :edit, :update]

  resources :developer_profiles do
    resources :contracts, only: [:create]
  end

  root to: 'pages#home'
  resources :contracts, only: [:show, :destroy] do
    resources :posts
  end

  delete "contracts/:id", to: "contracts#destroy", as: :destroy_contract

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
