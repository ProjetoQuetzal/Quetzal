class Team < ActiveRecord::Base
    has_many :children, class_name: "Team", foreign_key: "father_id"
    belongs_to :father, class_name: "Category"

    has_many :roles

end
