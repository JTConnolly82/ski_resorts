Rails.application.routes.draw do
  root 'states#index'
  resources :states do
    resources :regions
  end
  resources :regions do
    resources :resorts
  end
end
