 
class Admin::LivrosController < ApplicationController
  def index
    @categorias = Genero.generos
    @livros = Livro.all
  end

  def create
  
    pdf_io = params["pdf"]
    File.open(Rails.root.join('public', 'uploads','livros', "#{(Time.now.to_i)}#{pdf_io.original_filename}"), 'wb') do |file|
      file.write(pdf_io.read)
      params["pdf"] = file.path.split('uploads')[1]
    end

    imagem_capa_io = params["imagem_capa"]
    File.open(Rails.root.join('public', 'uploads','imagens', "#{(Time.now.to_i)}#{imagem_capa_io.original_filename}"), 'wb') do |file|
      file.write(imagem_capa_io.read)
      params["imagem_capa"] = file.path.split('uploads')[1]
    end

    livro = Livro.new
    livro.titulo = params["titulo"]
    livro.descricao = params["descricao"]
    livro.url_pdf = params["pdf"]
    livro.url_capa = params["imagem_capa"]
    livro.editora = params["editora"]
    livro.data_publicacao = params["data_publicacao"]

    generos = Array.new
    params["generos"].each do |genero|
      generos.push(Genero.new({nome: genero}))
    end

    livro.generos = generos

    if livro.save
      flash[:positive] = "Livro cadastrado com sucesso"
    else
      flash[:negative] = "Ocorreu um erro ao cadastrar livro"
    end

    redirect_to action: "index"
  end

  def editar
    @categorias = Genero.generos
    @livro = Livro.all[0]
  end

  def update
  end
end
