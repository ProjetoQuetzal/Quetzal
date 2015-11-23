class RoleAdministrator < Role


	def has_permission?(user)
		return (self.users.exists?(user))
	end

	def permit
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'manage_roles')
		self.operation_roles << Operation.find_by(controller: 'teams', action: 'destroy')

		self.operation_roles << Operation.find_by(controller: 'roles', action: 'index')
		self.operation_roles << Operation.find_by(controller: 'roles', action: 'show')
		self.operation_roles << Operation.find_by(controller: 'roles', action: 'edit')
		self.operation_roles << Operation.find_by(controller: 'roles', action: 'update')
	end
  
end
