class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.string :type
    	t.string :title
    	t.integer :father_id

    	t.belongs_to :team, index: true

      t.timestamps null: false
    end
    add_index :roles, :title
  end
end
