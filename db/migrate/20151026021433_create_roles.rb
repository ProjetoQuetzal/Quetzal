class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :type
      t.string :name
      t.integer :father_id
      t.timestamps null: false
    end
  end
end
