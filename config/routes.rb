Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create, :index, :update, :distroy]
      resources :pets, only: [:show, :create, :index, :update, :distroy]
      resources :items, only: [:show, :index]
      resources :pet_image_urls, only: [:index, :show]
    end
  end
end
