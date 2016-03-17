class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  
  def show
    if @user.profile.present?
      @profile = @user.profile.decorate
      @comments = @user.profile.comments.order(created_at: :desc)
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end