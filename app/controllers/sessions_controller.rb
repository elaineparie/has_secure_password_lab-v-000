class SessionsController < ApplicationController
  def create
    binding.pry
    @user = User.find_by(name: params[:user][:name])
  #  if @user
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to '/'
  else
    redirect_to '/login'
  end



 end
