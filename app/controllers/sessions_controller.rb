class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
   if @user
    unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to '/'
  elsif @user == nil || @user.empty?
    redirect_to '/login'
  end
  end



 end
