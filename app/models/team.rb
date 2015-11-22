class Team < ActiveRecord::Base
    class Team < ActiveRecord::Base
    has_many :children, class_name: "Team", foreign_key: "father_id"
    belongs_to :father, class_name: "Category"

    has_many :roles
    has_many :users, -> {uniq}, through: :roles


    


    def update_roles

    end

    def has_permission?(teamid, userid)
        retorno = false
        Team.find(teamid).roles.each do |role|
            retorno = (retorno or role.has_permission?(role.id, userid))        
        end
        return retorno
    end

end

end
