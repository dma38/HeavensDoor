Rails.application.routes.draw do
  get 'search/search_result'

  get 'search/search_show'

  resources 'categories', only: [:cat_index, :cat_show]
  resources 'flower_items', only: [:index, :show]
  get '/cat_show/:id', to: 'category#cat_show'
    root to: 'flower_items#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
