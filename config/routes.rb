Rails.application.routes.draw do
  resources :patterns
  resources :photos
  resources :photos
  get 'about/index'

  devise_for :users
  resources :posts
  resources :projects
  resources :pattern_design
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
