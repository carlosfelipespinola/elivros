Rails.application.routes.draw do
  root "application#index"
  get 'cadastro', to: "application#cadastro"


  namespace :admin do
    #este é o modulo do administrador
    #todas as rotas aqui começaram com /admin
    root to: redirect('/admin/livros')
    get :livros, to: 'livros#index'
  end

  namespace :usuario, path: 'dashboard' do
    #este é o modulo do usuario
    #todas as rotas aqui dentro começaram com /dashboard
    root to: 'livros#index'
    get 'livros/minha-lista', to: "livros#minha_lista"
    get 'livros/buscar/:query', to: "livros#buscar"
    get 'livros/categorias/:categoria', to: "livros#categorias"
    get 'minha-conta/', to: "minha_conta#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
