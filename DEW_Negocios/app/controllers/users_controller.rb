class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      cookies[:auth_token] = @user.auth_token

      redirect_to "http://localhost:3000/sabios/new" target="_blank"

    else
      render "new"
    end
  end

end
