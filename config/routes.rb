# frozen_string_literal: true

Rails.application.routes.draw do
  get 'developers/index'
  get 'search', to: 'developers#search'

  resource :search
  resources :developers do
    resources :products
  end

  root 'home#index'
end
