GA::Application.routes.draw do
  resources :students, only: [:index, :show]
  root 'app#index'
end
