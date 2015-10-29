class Role < ActiveRecord::Base
  has_many :children, class_name: "Role", foreign_key: "father_id"
  belongs_to :father, class_name: "Role"

  has_and_belongs_to_many :users
  belongs_to :team

end
