class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    binding.pry
    if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to '/'
  else 
    redirect_to '/login'

    end



 end
