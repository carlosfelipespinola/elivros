class Usuario::LivrosController < ApplicationController
  def index
  end

  def buscar
    @busca = params[:query]
  end

  def categorias
    @categoria_buscada = params[:categoria]
  end

  def minha_lista
  end
end
