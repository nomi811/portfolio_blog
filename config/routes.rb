# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about/index'

  devise_for :users
  resources :posts
  resources :contacts, only: %i[new create]
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
