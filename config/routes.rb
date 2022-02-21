# frozen_string_literal: true

Rails.application.routes.draw do
  get 'developers/index'
  resources :developers do
    resources :products
  end

  root 'home#index'
end