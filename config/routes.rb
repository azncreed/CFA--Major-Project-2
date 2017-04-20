Rails.application.routes.draw do
  resources :cprofiles
  devise_for :companies, controllers: { registrations: 'companies/registrations'}
  resources :jobs
  resources :profiles
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'pages#index'
  get 'pages/about'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
