class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    if @current_user
      # allow access to the form
    else
      flash["notice"] = "You must be logged in to post."
      redirect_to "/login"
    end
  end
  
  def create
    @post = Post.new
    @post["body"] = params["body"]
    @post["image"] = params["image"]
    @post["user_id"] = @current_user["id"]
    @post.save
    redirect_to "/posts"
  end
  def destroy
    @post = Post.find_by({"id" => params["id"]})
  if @post["user_id"] == @current_user["id"]
    @post.destroy
  end
  redirect_to "/posts"
end
end