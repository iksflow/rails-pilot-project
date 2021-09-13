Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root "homes#index"
  resources :homes
  resources :schools do
    resources :teachers
    resources :students
    resources :counselings
  end


end
