class UsersController < ApplicationController
  def create
    binding.pry
   user = User.new(params).save
 end
end
