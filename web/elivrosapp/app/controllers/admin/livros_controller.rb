class Admin::LivrosController < ApplicationController
  def index
    @categorias = Genero.generos
  end

  def create
    @categorias = Genero.generos
    @p = params

    pdf_io = params["pdf"]
    File.open(Rails.root.join('public', 'uploads','livros', pdf_io.original_filename), 'wb') do |file|
      file.write(pdf_io.read)
    end

    imagem_capa_io = params["imagem_capa"]
    File.open(Rails.root.join('public', 'uploads','imagens', imagem_capa_io.original_filename), 'wb') do |file|
      file.write(imagem_capa_io.read)
    end

  end
end
