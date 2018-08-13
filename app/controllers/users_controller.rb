class UsersController < ApplicationController


    def create
      @user = User.new(user_params)
      user = User.new(user_params).save
      if user
        session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/users/new'
    end
  end

    private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def index
    end
  end
