Rails.application.routes.draw do
    root "users#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only:[:index, :new, :create]
  # get '/product' => 'products#show'
  # get '/product/show' => 'products#show'

    post "/process" => "products#index"

    # get  '/'  => 'users#index'
    get '/blog' => 'users#blog'
    get '/media' => 'users#media'
    get '/cart' => 'users#cart'
    get '/new' => 'users#new'
    get '/product' => 'users#product'
    get '/product/show' => 'products#show'


end
