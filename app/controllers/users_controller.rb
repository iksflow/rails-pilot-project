class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def n_plus_1
    @users = User.all
    @users.pos

  end

  def create
    @user = User.new
    @user.save
  end
end
