class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
			t.references :role
      t.references :operation

      t.timestamps null: false
    end
    add_index :permissions, :role_id
    add_index :permissions, :operation_id
  end
end
