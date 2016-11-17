class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id]); nil
		@posts = @user.posts.all.reverse_order; nil
	end
end
