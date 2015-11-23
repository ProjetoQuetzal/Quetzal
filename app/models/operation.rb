class Operation < ActiveRecord::Base

	def self.has_permission?(user, resource, controller, action)
		if user == 1
			return true
		end

		if @operation = Operation.find_by(controller: controller, action: action)
			if @operation.type == "OperationRole"
					retorno = false

					@operation.roles.where(team_id: resource).each do |role|
						retorno = (retorno or role.has_permission?(user))
					end
				return retorno
			else
				return User.find(user).has_permission?(resource, controller, action)
			end
		return false
		end
	end

	def to_s
		self.name
	end
end