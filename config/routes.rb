Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'customers/missing_email', to: 'finder#missing_email'
  get 'customers/alphabetized', to: 'finder#alphabetized'

  root to: 'finder#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
