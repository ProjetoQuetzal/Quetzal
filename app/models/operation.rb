class Operation < ActiveRecord::Base
	has_many :permissions
	has_many :roles, :through => :permissions
end
