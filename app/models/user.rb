class User < ActiveRecord::Base
	has_secure_password
	
	has_many :assignments
	has_many :roles, :through => :assignments

	has_one :user_description
	accepts_nested_attributes_for :user_description
end
