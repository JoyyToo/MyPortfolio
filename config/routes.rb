Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio', to: 'portfolios#index'
  get 'react-items', to: 'portfolios#react'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'index', to: 'blogs#index'
  get 'blog/:id', to: 'blogs#show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
