class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :reply, :create_reply]
  before_action :set_comment, only: [:reply, :create_reply]
  def create
    @comment = current_user.comments.build(comment_params)
    
    respond_to do |format|
      if @comment.save
        format.html {
          flash[:success] = 'Posting completed.'
          redirect_to :back
        }
        format.js
      else
        format.html {
          flash[:danger] = 'Error: An error has occurred in posting comment process.'
          redirect_to :back
        }
        format.js
      end
    end
  end

  def reply
    @child_comment = @comment.children.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create_reply
    @child_comment = current_user.comments.build(message: message_param, parent_id: @comment.id)
    if @child_comment.save
      if @child_comment.commentable_type == 'Profile'
        redirect_to @child_comment.user
      else
        redirect_to @child_comment.commentable
      end
    else
      # render :reply
    end
  end

  private

  def message_param
    params[:comment][:message]
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:message, :commentable_id, :commentable_type)
  end
end