class Usuario::MinhaContaController < ApplicationController
  def index
    @categorias_livro = Genero.generos
  end
end
