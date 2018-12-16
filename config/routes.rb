Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'

  get 'books/new'

  get 'books/edit'

  get 'books/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
