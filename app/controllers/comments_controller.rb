class CommentsController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
		@comment = Comment.new
	end

	def create
	   @post = Post.find(params[:post_id])
	   @user = current_user
	   @comment = @post.comments.create(comment_params)
	   @comment.user = current_user
	   # debugger
		if @comment.save
			redirect_to @post
		else
			render 'new'
		end
	end

	private

	  def comment_params
	    params.require(:comment).permit(:user_id, :post_id, :content)
	  end
end
