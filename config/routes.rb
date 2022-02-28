# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'developers/index'
  get 'search', to: 'developers#search'

  resource :search

  resources :developers do
    resources :products
  end

  resource :cart, only: %i[show destroy] do
    resources :items, only: %i[destroy create]
  end


  root 'home#index'
end
