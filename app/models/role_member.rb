class RoleMember < Role


	def has_permission?(user)
		return (self.users.exists?(user) or self.father.has_permission?(user))
	end

	def permit
		self.operations << Óperation.find_by(controller: 'teams', action: 'new')
		self.operations << Óperation.find_by(controller: 'teams', action: 'create')
		self.operations << Óperation.find_by(controller: 'teams', action: 'edit')
		self.operations << Óperation.find_by(controller: 'teams', action: 'update')
	end

end
