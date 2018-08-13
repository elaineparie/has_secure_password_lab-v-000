class SessionsController < ApplicationController
  def create
   user = User.new(params[:user]).save
 end
end
