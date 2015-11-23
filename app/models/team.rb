class Team < ActiveRecord::Base
    has_many :children, class_name: "Team", foreign_key: "father_id"
    belongs_to :father, class_name: "Category"

    has_many :roles
    has_many :users, -> {uniq}, through: :roles

    def update_roles

    end

    def to_s
        self.name
    end


    def create_roles
        @role_obs = RoleObserver.new(title: "Observador")
        @role_mb = RoleMember.new(title: "Membro")
        @role_adm = RoleAdministrator.new(title: "Administrador")

        @role_adm.children = @role_mb
        @role_mb.children = @role_obs
        self.roles << @role_adm
        self.roles << @role_mb
        self.roles << @role_obs

    end

end