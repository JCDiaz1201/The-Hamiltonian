class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id]); nil
		@posts = @user.posts.all; nil 
		@comments = @user.comments.all; nil
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			log_in @user
			redirect_to @user
		else
			render 'new'
		end
	end

	private
	    # def set_post
	    #   @user = User.find(params[:id])
	    # end

	    def user_params
	      params.require(:user).permit(:pseudonym, :email, :password, :password_confirmation)
	    end
end



