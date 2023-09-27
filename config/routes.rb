Rails.application.routes.draw do
  resources :nodes
  root "hello#index"
end
