class OperationUser < Operation
	has_many :permission_user
	has_many :user, :through => :permission_user
end
