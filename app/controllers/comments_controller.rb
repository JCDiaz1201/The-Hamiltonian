class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

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

	def show
	end 

	def update
		respond_to do |format|
		  if @comment.update(comment_params)
		    format.html { redirect_to user_path(current_user), notice: 'Comment was successfully updated.' }
		    format.json { render :show, status: :ok, location: user_path(current_user) }
		  else
		    format.html { render :edit }
		    format.json { render json: @comment.errors, status: :unprocessable_entity }
		  end
		end
	end

	def destroy
	    @comment.destroy
	    respond_to do |format|
	      format.html { redirect_to user_path(current_user), notice: 'Comment was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private

		def set_comment
		  @comment = Comment.find(params[:id])
		end

		def comment_params
			params.require(:comment).permit(:user_id, :post_id, :content)
		end
end
