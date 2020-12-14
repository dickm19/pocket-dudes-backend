Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users only: [:create, :index, :update, :distroy]
  resources :pets only: [:create, :index, :update, :distroy]
  resources :items only: [:index]
end
