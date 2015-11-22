class UserMailer < ActiveRecord::Base
	
	def registration_confirmation(user)
		mail(:from => "jgararuna@hotmail.com",
			 :to => user.email,
			 :subject => "Registro Quetzal")
end