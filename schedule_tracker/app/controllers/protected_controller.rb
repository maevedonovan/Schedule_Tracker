class ProtectedController < ApplicationController

  before_action :require_login

  def require_login
    unless session[:username]
      flash[:message] = "Access Denied."
      redirect_to login_path
    end
  end
end
