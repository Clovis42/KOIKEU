Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
  get 'home', to: 'products#index'
  resources :products, only: %i[show index new create]

end
