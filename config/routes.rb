Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  mount Payola::Engine => '/payola', as: :payola

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy ]

  root to: 'products#index'

  devise_for :users
end
