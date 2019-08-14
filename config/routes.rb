Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'restaurants', to: 'restaurants#index'
  # better way giving the root in ann app
  root to: "restaurants#index"
  resources :restaurants, only: %i[show new create]
  resources :restaurants do
    resources :reviews, only: %i[index new create]
  end
end
