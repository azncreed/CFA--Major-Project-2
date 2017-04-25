Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :applies
  resources :cprofiles
  devise_for :companies, controllers: { registrations: 'companies/registrations'}
  
  resources :profiles
  devise_for :users, controllers: {registrations: 'users/registrations'}  
  resources :jobs
  root 'pages#index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
