class UserMailer < ActionMailer::Base
	default from: 'insoft-ej@gmail.com'
	
	def registration_confirmation(user)
		@user = user
		mail(:to => @user.email, :subject => "Registro Quetzal", template_path: 'user_mailer')
	end
end