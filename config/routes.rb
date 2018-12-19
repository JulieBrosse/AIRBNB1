Rails.application.routes.draw do
  resources :gardens
  devise_for :views
  devise_for :users
  delete 'destroy_gardens', to: "gardens#destroy", as: :destroy_gardens
 root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
