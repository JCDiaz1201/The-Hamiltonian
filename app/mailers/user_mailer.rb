class UserMailer < ActionMailer::Base
	default :from => "jcdiaz1201@gmail.com"

	def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.pseudonym} <#{user.email}>", :subject => "Registration Confirmation")
 end
end