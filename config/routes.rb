GA::Application.routes.draw do
  resources :students, only: :index
  root 'app#index'
end
