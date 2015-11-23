class User < ActiveRecord::Base
	has_secure_password
	
	has_many :assignments
	has_many :roles, :through => :assignments

	has_many :permissions, class_name: "PermissionUser"
	has_many :operations, class_name: "OperationUser", :through => :permissions

	has_one :user_description
	accepts_nested_attributes_for :user_description


	def has_permission?(resource, controller, action)
		if action == 'show'
			return true
		else
			if self.id == resource
				return true
			end
			return false
		end
	end

	def permit
		self.operations << Operation.find_by(controller: 'users', action: 'show')
		self.operations << Operation.find_by(controller: 'users', action: 'edit')
		self.operations << Operation.find_by(controller: 'users', action: 'update')
	end

	def to_s
		self.user_description.name
	end
end
