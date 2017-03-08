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
			UserMailer.registration_confirmation(@user).deliver
			format.html { redirect_to root_url, notice: 'Please confirm your email address to continue' }
			# log_in @user
			# redirect_to @user
		else
			format.html { notice: 'Please confirm your email address to continue' }
			render 'new'
		end
	end

	def confirm_email
    user = User.find_by_confirm_token(params[:id])
    if user
      user.email_activate
      flash[:success] = "Welcome to The Hamiltonian! Your email has been confirmed.
      Please sign in to continue."
      redirect_to login_path
    else
      flash[:error] = "Sorry. User does not exist"
      redirect_to root_url
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



