class CommentsController < ApplicationController

  def create
    comment = Comment.create(text: params[:text], art_id: params[:art_id], user_id: current_user.id)
    redirect_to "/arts/#{comment.art.id}"
  end

  def destroy
  end

  private

  def comment_params
    @comment = params.permit(:text, :art_id)
  end

end
