class SessionsController < ApplicationController
    def new
    end
    def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to restaurantes_path, alert: "Seja bem vindo!"
      else
        flash.now[:alert] = "Email ou senha inválidos"
        render "new"
      end
    end
    def destroy
      session[:user_id] = nil
      redirect_to root_url, alert: "Usuário desconectado!"
    end
  end
