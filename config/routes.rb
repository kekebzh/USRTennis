Rails.application.routes.draw do
  

  devise_for :users
  resources :posts
  resources :events

  authenticate :user do
    resources :posts, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :posts, only: [:index, :show]
 
  root to: 'posts#index'

  get 'contact', to: 'pages#about'
  get 'partenaires', to: 'pages#partenaires'
  get 'les_tarifs', to: 'pages#tarifs'
  get 'les_installations', to: 'pages#installations'
  get 'reglement_interne', to: 'pages#reglement'
  get 'equipe_enseignante', to: 'pages#equipe_enseignante'
  get 'le_bureau', to: 'pages#bureau'

  resources :feeds do
    member do
     resources :entries, only: [:index, :show]
    end
  end
  
end
