Rails.application.routes.draw do
  devise_for :users, path: '', path_names:
      { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :portfolios, except: [:show]
  get 'portfolio', to: 'portfolios#index'
  get 'react-items', to: 'portfolios#react'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  post 'portfolio', to: 'portfolios#create'
  delete 'portfolio/:id', to: 'portfolios#destroy'
  put 'portfolio/:id', to: 'portfolios#update'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'index', to: 'blogs#index'
  get 'blog/:id', to: 'blogs#show'
  post 'blog', to: 'blogs#create'
  delete 'blog/:id', to: 'blogs#destroy'
  put 'blog/:id', to: 'blogs#update'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
