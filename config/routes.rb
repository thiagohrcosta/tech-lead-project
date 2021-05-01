Rails.application.routes.draw do
  devise_for :users
 
  resources :users, :only => [:show]
  
  resources :developer_profiles

  root to: 'pages#home'
  resources :contracts, only: [:show, :new, :create, :destroy]


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
