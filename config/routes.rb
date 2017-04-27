Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only:[:index, :new, :create]

    get  '/'  => 'users#index'
    get '/blog' => 'users#blog'
    get '/media' => 'users#media'
    get '/cart' => 'users#cart'
    get '/contact' => 'users#contact'


end
