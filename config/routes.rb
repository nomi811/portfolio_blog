Rails.application.routes.draw do
  get 'pattern_design/index'

  get 'photography/index'

  get 'about/index'

  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
