class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name])
    if @user
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end
  end


 end
