Rails.application.routes.draw do
  

  devise_for :users
  resources :posts
  resources :events
 
  root to: 'posts#index'

  get 'contact', to: 'statics#contact'
  get 'partenaires', to: 'statics#partenaires'

  resources :feeds do
    member do
     resources :entries, only: [:index, :show]
    end
  end
  
end
