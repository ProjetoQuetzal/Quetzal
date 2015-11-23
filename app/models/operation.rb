class Operation < ActiveRecord::Base
	has_many :permissions
	has_many :roles, :through => :permissions


	def self.has_permission?(user, team, controller, action)
		@operation = Operation.find_by(controller: controller, action: action)
		if @operation
				retorno = false
				@operation.roles.where(team_id: team).each do |role|
					retorno = (retorno or role.has_permission?(user))
				end
				return retorno
		end
		return false
	end

	def to_s
		self.name
	end
end


 #<% @operation.roles.where("role_id < ?", 4).each do |role| %>