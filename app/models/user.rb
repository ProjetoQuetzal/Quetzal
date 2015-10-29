class User < ActiveRecord::Base
    has_secure_password

    has_and_belongs_to_many :roles
    
    has_one :user_description
    accepts_nested_attributes_for :user_description

end
