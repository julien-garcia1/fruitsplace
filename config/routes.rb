Rails.application.routes.draw do
  devise_for :users
  resources :products, except: [:show] do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:index, :destroy]
  get 'myproducts', to: 'products#myproducts', as:'my_products'
  post 'orders/pay', to: 'orders#pay', as:'pay'
  get 'orders/client_order', to: 'orders#client_order'  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
