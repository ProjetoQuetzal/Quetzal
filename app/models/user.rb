class User < ActiveRecord::Base
    has_secure_password

    has_one  :user_description
    accepts_nested_attributes_for :user_description
    has_many :members

end
