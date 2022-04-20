Rails.application.routes.draw do
  get 'home/index'
  resources :entities
  resources :groups
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "home#index"

  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
  
    unauthenticated do
      root "home#index", as: :unauthenticated_root
    end
  end
end
