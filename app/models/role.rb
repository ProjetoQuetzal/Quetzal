class Role < ActiveRecord::Base
  has_one :children, class_name: "Role", foreign_key: "father_id"
  belongs_to :father, class_name: "Role"

  has_many :assignments
  has_many :users, :through => :assignments
  has_many :permissions, class_name: "PermissionRole"
  has_many :operations, class_name: "OperationUser", :through => :permissions
   

  belongs_to :team


  def to_s
  	self.title
  end

end
