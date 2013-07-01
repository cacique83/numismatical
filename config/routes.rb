Numismatical::Application.routes.draw do

  devise_for :users

  resources :coins
  resources :albums

  root to: 'coins#index'
end


