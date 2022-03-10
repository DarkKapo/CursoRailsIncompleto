class SessionsController < ApplicationController
  include BCrypt
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Welcome'
    else
      session[:user_id] = nil
      redirect_to root_path, alert: 'Try again'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Log Out'
  end
end
