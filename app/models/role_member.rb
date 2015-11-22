class RoleMember < Role


	def has_permission?(roleid, userid)
		Role.find(roleid).users.exists?(userid)
	end

end
