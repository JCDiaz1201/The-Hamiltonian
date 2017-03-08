class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      if user.email_confimed
  		  log_in user
  		  redirect_to user
      else
        flash[:success] = 'Please confirm your email address to continue'
        render 'new'
      end
  	else
  		flash.now[:error] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url, notice: 'Logged out successfully.'
  end
end

