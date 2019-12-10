class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      end
    end

    def authorize
      redirect_to login_path, alert: 'É necessário estar logado para acessar essa página' if current_user.nil?
    end

    def correct_user?
      @user = User.find(params[:id])
        unless current_user == @user
          else redirect_to login_path
        end
      end
  end
