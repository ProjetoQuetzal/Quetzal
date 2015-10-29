class Role < ActiveRecord::Base
  has_many :children, class_name: "Role", foreign_key: "father_id"
  belongs_to :father, class_name: "Role"
end
