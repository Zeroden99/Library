Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/edit'

  get 'comments/show'

  get 'bookcomments/show'

  get 'userparams/new'

  get 'userparams/show'

  get 'userparams/edit'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :books do
    resources :comments
  end
  resources :userparams


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
