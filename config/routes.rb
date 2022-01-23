Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root "posts#index"
  resources :homes
  resources :schools do
    resources :teachers
    resources :students
    resources :counselings
  end
  # resources :posts do
  #   resources :comments
  # end
  get "/posts/index", to: "posts#index"
  get "/posts/index_joins", to: "posts#index_joins"
  get "/posts/index_includes", to: "posts#index_includes"
  get "/posts/index_preload", to: "posts#index_preload"
  get "/posts/index_eager_load", to: "posts#index_eager_load"

end
