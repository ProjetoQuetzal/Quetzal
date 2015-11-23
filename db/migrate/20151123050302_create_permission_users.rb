class CreatePermissionUsers < ActiveRecord::Migration
  def change
    create_table :permission_users do |t|
    	t.belongs_to :user, index: true
    	t.references :operation_user
    end
    add_index :permission_users, :operation_user_id
  end
end
