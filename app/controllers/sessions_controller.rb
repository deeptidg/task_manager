class SessionsController < ApplicationController
  def new
  end

  def create
    logger.info "login_params #{login_params}"
    user = login(login_params[:email], login_params[:password], login_params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid."
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
  private
    def login_params
      params.permit(:email, :password, :remember_me)
    end
end
