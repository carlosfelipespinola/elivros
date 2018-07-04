Rails.application.routes.draw do
  root "application#index"
  get "cadastro", to: "application#cadastro"
  resources :livros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
