Rails.application.routes.draw do
  resources :company_profiles
  devise_for :companies
  resources :jobs
  resources :profiles
  devise_for :users
  root 'pages#index'
  get 'pages/about'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
