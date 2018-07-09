class Usuario::LivrosController < ApplicationController
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
    @livros = Livro.all[0]
  end

  def minha_lista
    @categorias_livro  = Genero.generos
    @livros = Livro.all
  end
end
