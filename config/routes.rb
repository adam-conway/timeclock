Rails.application.routes.draw do
  get 'welcome/index'

  resources :punchin
  resources :clients

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
