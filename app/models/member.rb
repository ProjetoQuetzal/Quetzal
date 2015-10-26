class Member < ActiveRecord::Base

    belongs_to :user
    belongs_to :team
    belongs_to :role

    def admin?
      self.role.name == 'admin'
    end

    def member?
      self.role.name == 'member' || self.admin?
    end

    def observer?
      self.role.name == 'observer' || self.member?
    end

end
