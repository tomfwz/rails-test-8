class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def show
    @user = @user.decorate
    @comments = @user.comments.order(created_at: :desc)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end