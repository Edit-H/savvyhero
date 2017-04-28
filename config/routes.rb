Rails.application.routes.draw do
    root "users#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only:[:index, :new, :create]
  resources :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  # get '/product' => 'products#show'
  # get '/product/show' => 'products#show'



    get  '/'  => 'users#index'
    get '/blog' => 'users#blog'
    get '/media' => 'users#media'
    get '/cart' => 'users#cart'
    get '/new' => 'users#new'
    get '/product' => 'users#product'
    get '/product/show' => 'products#show'
    post 'product_add' => "products#index"
    post 'process/to_cart' => 'products#process_to_cart'
    # post "/cart" => ""

end
