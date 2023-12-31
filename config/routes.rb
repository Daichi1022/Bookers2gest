# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "homes#top"
  get "home/about" => "homes#about", as: "about"
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy]

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
