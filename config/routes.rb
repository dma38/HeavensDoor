Rails.application.routes.draw do

  resources 'flower_items', only: [:index, :show]

    root to: 'flower_items#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
