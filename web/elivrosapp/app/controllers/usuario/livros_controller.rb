class Usuario::LivrosController < ApplicationController
  def index
    @categorias_livro  = Genero.generos
    @livros = Livro.all
  end

  def buscar
    @categorias_livro  = Genero.generos
    @busca = params[:busca]
    @livros = Livro.all
  end

  def categorias
    @categorias_livro  = Genero.generos
    @categoria_buscada = params[:categoria]
    @livros = Livro.all
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
