class SessionController < ApplicationController
  def new
    render "/sessions/signinpage"
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/", notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "/sessions/signinpage"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/", notice: "Logged out!"
  end
end
