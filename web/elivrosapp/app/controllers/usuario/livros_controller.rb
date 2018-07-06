class Usuario::LivrosController < ApplicationController
  def index
    @categorias_livro  = Genero.generos
    @livros = []
  end

  def buscar
    @categorias_livro  = Genero.generos
    @busca = params[:busca]
    @livros = []
  end

  def categorias
    @categorias_livro  = Genero.generos
    @categoria_buscada = params[:categoria]
    @livros = []
  end

  def minha_lista
    @categorias_livro  = Genero.generos
    @livros = []
  end
end
