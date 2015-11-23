class RoleMember < Role


	def has_permission?(user)
		return (self.users.exists?(user) or self.father.has_permission?(user))
	end

	def permit
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'new')
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'create')
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'edit')
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'update')
	end

end
