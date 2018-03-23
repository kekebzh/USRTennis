Rails.application.routes.draw do
  devise_for :users

  resources :posts
  
  root to: 'posts#index'

  get 'contact', to: 'statics#contact'
end
