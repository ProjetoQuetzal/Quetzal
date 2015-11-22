class Operation < ActiveRecord::Base
	has_many :permissions
	has_many :roles, :through => :permissions


	def to_s
		self.name
	end
end
