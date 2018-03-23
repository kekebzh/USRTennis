Rails.application.routes.draw do
  

  devise_for :users
  resources :posts
 
  root to: 'posts#index'

  get 'contact', to: 'statics#contact'

  resources :feeds do
    member do
     resources :entries, only: [:index, :show]
    end
  end
  
end
