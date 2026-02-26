class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment["body"] = params["body"]
    @comment["post_id"] = params["post_id"]
    @comment["user_id"] = @current_user["id"]
    @comment.save
    redirect_to "/posts"
  end
end
