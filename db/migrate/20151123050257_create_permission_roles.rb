class CreatePermissionRoles < ActiveRecord::Migration
  def change
    create_table :permission_roles do |t|
    	t.belongs_to :role, index: true
    	t.references :operation_role
    end
    add_index :permission_roles, :operation_role_id
  end
end
