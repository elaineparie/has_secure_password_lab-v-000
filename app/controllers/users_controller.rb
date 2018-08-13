class UsersController < ApplicationController
  def create
   user = User.new(user_params).save
 end
end 
