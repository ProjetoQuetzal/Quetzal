class PermissionUser < Permission
	belongs_to :user
	belongs_to :operation_user
end
