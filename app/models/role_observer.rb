class RoleObserver < Role

	def has_permission?(user)
		return (self.users.exists?(user) or self.father.has_permission?(user))
	end

	def permit
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'show')
		# projeto
	end

end
