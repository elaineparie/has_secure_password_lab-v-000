class UsersController < ApplicationController
  def create
    binding.pry
   user = User.new(params[:user]).save
 end
end
