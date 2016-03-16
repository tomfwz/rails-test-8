class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def show
    @user.profile = @user.profile.decorate if @user.profile.present?
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end