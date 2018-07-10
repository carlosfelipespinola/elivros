class Usuario::LivrosController < ApplicationController
  before_action :usuario_logado
  layout 'application', :except => :ler_livro

  def index
    @categorias_livro  = Genero.generos
    @livros = Livro.all.limit(5)

  end

  def buscar
    @categorias_livro  = Genero.generos
    @busca = params[:busca]
    query = {"$or" => [{"titulo": /#{@busca}/i},{"editora": /#{@busca}/i}]}
    if @busca == ""
      @busca = "todos"
    end
    @livros = Livro.where(query).to_a
  end

  def categorias
    @categorias_livro  = Genero.generos
    @categoria_buscada = params[:categoria]
    @livros = Livro.where( { "generos": { "$elemMatch": { "nome": params[:categoria]} }} ).to_a
    puts @livros
  end

  def detalhes
    @categorias_livro  = Genero.generos
    @categoria_buscada = params[:categoria]
    @livro = Livro.find_by(_id: params[:id])
    @outrosLivros = Livro.where({ _id: { "$ne": params[:id] } }).limit(3)
    begin
      path = @livro[:url_pdf]
      root = Rails.root.join('public','uploads')
      full_path = "#{root}#{path}"
      reader = PDF::Reader.new(full_path)
      @paginas = reader.page_count
    rescue => exception
      @paginas = ""
    end
    
  end

  def minha_lista
    @categorias_livro  = Genero.generos
    @livros = Livro.all
  end

  def ler_livro
    @livro = Livro.find_by(_id: params[:id])
  end

private

  def usuario_logado
    if session[:current_user_id] == nil
      redirect_to '/'
    end
  end

end
