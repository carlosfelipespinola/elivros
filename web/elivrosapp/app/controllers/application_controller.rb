class ApplicationController < ActionController::Base
  def index
  end

  def cadastro
  end

  def serve_file
    send_file(Rails.root.join('public', 'uploads',"#{params[:tipo_arquivo]}/#{params[:nome_arquivo]}.jpg"))
  end
end
