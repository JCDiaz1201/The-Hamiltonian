class UserMailerPreview < ActionMailer::Preview
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.confirm_email_user_url(user)
  end
end