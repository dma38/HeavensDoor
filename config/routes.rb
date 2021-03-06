Rails.application.routes.draw do
  get 'charges/new'

  get 'charges/create'

  get 'signin/signin', to: "signin#signin"
  post 'signin/signin_process', to: "signin#signin_process"

  get 'placeorder/placeorder'

  get 'remove_cart/remove_cart/(:id)', to: "remove_cart#remove_cart"

  get 'placeorder/payment', to: "placeorder#payment_accepted"

  get 'checkout/checkout'

  get 'search/search_result'

  get 'search/search_show'
  # get '/flower_items/:id/add_to_cart' => 'cart#add_to_cart_success'
  resources 'categories', only: [:cat_index, :cat_show]
  resources 'flower_items', only: [:index, :show]
  get '/cat_show/:id', to: 'category#cat_show'
    get '/cart/add_to_cart_success', to: 'cart#add_to_cart_success'
    get '/cart/cart', to: 'cart#cart'
    root to: 'flower_items#index'

  resources :flower_items, only: :show do
        member do
          post :add_to_cart
        end
      end

  resources :charges

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
