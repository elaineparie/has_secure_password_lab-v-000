class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
  #  if @user
    unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to '/'

  end



 end
