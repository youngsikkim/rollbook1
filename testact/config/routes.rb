Acttest3::Application.routes.draw do
  resources :enrollments

  get 'admin' => 'actindex#index'
  
  controller :sessions do
    get 'login' => :new
    post 'login' => :create 
    delete 'logout' => :destroy
  end

  resources :users

  resources :orders

  resources :lectures

  resources :line_items

  resources :carts

  get "actindex/index"

  resources :courses


  root to: 'actindex#index', as: 'actindex'
  end
