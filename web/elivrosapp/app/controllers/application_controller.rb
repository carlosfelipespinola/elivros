class ApplicationController < ActionController::Base
  def index
  end

  def cadastro
  end

  def serve_file
    if params[:tipo_arquivo] == 'livros'
      send_file(Rails.root.join('public', 'uploads',"#{params[:tipo_arquivo]}/#{params[:nome_arquivo]}.#{params[:format]}"), :type => 'application/pdf', disposition: 'inline')
    else
      send_file(Rails.root.join('public', 'uploads',"#{params[:tipo_arquivo]}/#{params[:nome_arquivo]}.#{params[:format]}"))
    end
  end
end
