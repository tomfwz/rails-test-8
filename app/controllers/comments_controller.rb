class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

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

  private

  def comment_params
    params.require(:comment).permit(:message, :commentable_id, :commentable_type)
  end
end