class UsersController < ApplicationController
  def create
   user = User.new(params).save
 end
end
