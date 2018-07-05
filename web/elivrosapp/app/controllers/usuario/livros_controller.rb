class Usuario::LivrosController < ApplicationController
  def index
    @categorias_livro  = Genero.generos
  end

  def buscar
    @categorias_livro  = Genero.generos
    @busca = params[:query]
  end

  def categorias
    @categorias_livro  = Genero.generos
    @categoria_buscada = params[:categoria]
  end

  def minha_lista
    @categorias_livro  = Genero.generos
  end
end
