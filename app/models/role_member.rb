class RoleMember < Role


	def has_permission?(user)
		return (self.users.exists?(user) or self.father.has_permission?(user))
	end

end
