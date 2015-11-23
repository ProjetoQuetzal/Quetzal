class RoleAdministrator < Role


	def has_permission?(user)
		return (self.users.exists?(user))
	end

	def permit
		self.operations << Óperation.find_by(controller: 'teams', action: 'manage_roles')
		self.operations << Óperation.find_by(controller: 'teams', action: 'destroy')

		self.operations << Óperation.find_by(controller: 'roles', action: 'index')
		self.operations << Óperation.find_by(controller: 'roles', action: 'show')
		self.operations << Óperation.find_by(controller: 'roles', action: 'edit')
		self.operations << Óperation.find_by(controller: 'roles', action: 'update')
	end
  
end
