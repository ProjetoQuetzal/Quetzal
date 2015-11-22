class Role < ActiveRecord::Base
  has_many :children, class_name: "Role", foreign_key: "father_id"
  belongs_to :father, class_name: "Role"

  has_many :assignments
  has_many :users, :through => :assignments
  has_many :permissions
  has_many :operations, :through => :permissions
  

  belongs_to :team


  def to_s
  	self.title
  end

end
