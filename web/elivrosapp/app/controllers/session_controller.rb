class SessionController < ApplicationController

  def create_session
    usuario = Usuario.find_by(email: params['email'], senha: params['senha'])
    if usuario
      session[:current_user_id] = usuario.id.to_s
      redirect_to :controller => 'usuario/livros', :action => 'index'
    else
      redirect_to '/', notice: 'Usuário e/ou senha incorretos.'
    end
  end

  def destroy_session
    session[:current_user_id] = nil
    redirect_to '/'
  end
end
