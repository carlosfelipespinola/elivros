class Admin::LivrosController < ApplicationController
  def index
    @categorias = Genero.generos
  end
end
