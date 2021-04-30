Rails.application.routes.draw do
  devise_for :users

  # devise_scope :user do
  #   get 'users/:id' => 'developer_profiles#show', as: user
  # end

  resources :users, :only => [:show] do
    resources :developer_profiles
  end


  # resources :users do
  #   resources :developer_profiles
  # end
  # devise_scope :user do
  # get 'users/:id' => 'registrations#show', as: user
  # end

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
