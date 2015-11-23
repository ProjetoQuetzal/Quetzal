class PermissionRole < Permission
	belongs_to :role
	belongs_to :operation_role
end
