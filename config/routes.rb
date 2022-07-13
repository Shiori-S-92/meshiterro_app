Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users
  # get 'homes/top'
  root to: "homes#top"
  get "/homes/about" => "homes#about", as: "about"

  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  # get 'users/show'
  # get 'users/edit'
  resources :users, only: [:show, :edit]

end
