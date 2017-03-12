class UserMailer < ActionMailer::Base
	default :from => "jcdiaz1201@gmail.com"


	def registration_confirmation(user)
    @user = user
    mail(:to => user.email, :subject => "The Hamiltonian Registration Confirmation")
  end
end