Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :products, except: [:index, :delete] do
      resources :reviews
    end
  end
  resources :products, only: [:index, :delete]

  root 'categories#index'
end
