Rails.application.routes.draw do
  get 'userparams/new'

  get 'userparams/show'

  get 'userparams/edit'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
