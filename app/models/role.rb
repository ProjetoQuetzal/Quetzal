class Role < ActiveRecord::Base
  has_one :children, class_name: "Role", foreign_key: "father_id"
  belongs_to :father, class_name: "Role"

  has_many :assignments
  has_many :users, :through => :assignments
  has_many :permission_roles
  has_many :operation_roles, :through => :permission_roles


  belongs_to :team


  def to_s
  	self.title
  end

end
