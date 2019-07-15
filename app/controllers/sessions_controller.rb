class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      flash[:success] = "You have logged in successfully"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "You entered wrong credentials"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:positive] = "You have logged out successfully"
    redirect_to login_path
  end
end
