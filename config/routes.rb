Rails.application.routes.draw do
  get 'students/index'

  root "schools#index"
  resources :schools do
    resources :teachers
    resources :students
  end
end
