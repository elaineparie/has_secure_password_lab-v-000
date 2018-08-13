class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
   if @user
     session[:user_id] = @user.id
   end
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    binding.pry
    redirect_to '/'
  end

    end



 end
