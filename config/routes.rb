Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create, :index, :update, :destroy]
      resources :pets, only: [:show, :create, :index, :update, :destroy]
      resources :items, only: [:show, :index, :create, :update]
      resources :pet_image_urls, only: [:index, :show]
      resources :user_items, only: [:show, :index, :create, :update, :destroy]
    end
  end
end
