class OperationRole < Operation
	has_many :permission_roles
	has_many :roles, :through => :permission_roles
end
