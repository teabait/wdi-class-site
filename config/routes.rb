GA::Application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  root 'app#index'
end
