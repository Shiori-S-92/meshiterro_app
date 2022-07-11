Rails.application.routes.draw do
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  devise_for :users

  # get 'post_image/new'
  # get 'post_image/index'
  # get 'post_image/show'
  # get 'post_image/edit'
  resources :post_image, only: [:new, :create, :index, :show]

  get 'homes/top'
  get "/homes/about" => "homes#about", as: "about"
end
