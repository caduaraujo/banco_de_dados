Rails.application.routes.draw do
  resources :cartao_pedidos
  resources :cartaos
  resources :pedidos
  resources :entregadors
  get 'sessions/new'
  resources :users

  resources :restaurantes do
    resources :pratos
  end
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'restaurantes#index', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'entrance', to: 'home#index', as: 'entrance'

  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
