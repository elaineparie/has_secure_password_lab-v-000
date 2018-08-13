class UsersController < ApplicationController


    def create
      user = User.new(user_params).save
      binding.pry
      redirect_to '/'
    end

    private

    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def index
    end
  end
