class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name])
    if @user
    return head(:forbidden) unless @user.authenticate(params[:password])
    binding.pry
    session[:user_id] = @user.id
    redirect_to '/'
  else
    redirect_to '/login'
  end
  end


 end
