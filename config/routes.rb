Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  resources :signup, only: [:index]
  resources :mypages, only: [:index]
  
  root "articles#index"
end
