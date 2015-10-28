class CreateRoleAdministrators < ActiveRecord::Migration
  def change
    create_table :role_administrators do |t|

      t.timestamps null: false
    end
  end
end
