Rails.application.routes.draw do
  root "application#index"
  get 'cadastro', to: "application#cadastro"
  get 'public/:tipo_arquivo/:nome_arquivo', to: "application#serve_file"

  namespace :admin do
    #este é o modulo do administrador
    #todas as rotas aqui começarão com /admin
    root to: redirect('/admin/livros')
    get :livros, to: 'livros#index'
    post :livros, to: 'livros#create'
    get 'livros/:id', to: 'livros#editar'
    put 'livros/:id', to: 'livros#update'
  end

  namespace :usuario, path: 'dashboard' do
    #este é o modulo do usuario
    #todas as rotas aqui dentro começarão com /dashboard
    root to: 'livros#index'
    get 'livros/minha-lista', to: "livros#minha_lista"
    get 'livros', to: "livros#buscar"
    get 'livros/categorias/:categoria', to: "livros#categorias"
    get 'livros/:id', to: "livros#detalhes"
    get 'minha-conta/', to: "minha_conta#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
