class CommentsController < ApplicationController
  before_filter :require_login

	def new
    @comment = Comment.new
  end

  # Create action saves the post into database
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find params[:post_id]
    @comment.post = @post
    @comment.user = current_user
    if @comment.save
      flash[:notice] = "Successfully created comment!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new comment!"
      render :new
    end
  end

   def comment_params
    params.require(:comment).permit(:body,:post_id)
  end
end
