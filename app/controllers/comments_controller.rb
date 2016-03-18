class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @comment = Comment.new(parent_id: params[:parent_id])
  end

  def create
    if parent_id.present?
      parent = Comment.find(parent_id)
      @comment = parent.children.build(comment_params)
    else
      @comment = Comment.new(comment_params)
    end

    @comment.update_attributes(user_id: current_user.id)

    respond_to do |format|
      if @comment.save
        format.html {
          flash[:success] = 'Your comment was successfully added!'
          redirect_to root_url
        }
        format.js
      else
        format.html {
          flash[:danger] = 'Error: An error has occurred in posting comment process.'
          render :new
        }
        format.js
      end
    end
  end

  private

  def parent_id
    params[:comment][:parent_id]
  end

  def comment_params
    params.require(:comment).permit(:message, :commentable_id, :commentable_type)
  end
end