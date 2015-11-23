class RoleAdministrator < Role


	def has_permission?(user)
		return (self.users.exists?(user))
	end
  
end
