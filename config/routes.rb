# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :roles

    root to: 'users#index'
  end
  devise_for :users
  root to: 'home#index'
  get 'home/about'
  get 'home/contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
