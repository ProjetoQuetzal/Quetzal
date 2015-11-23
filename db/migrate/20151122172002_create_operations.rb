class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
		t.string :type
		t.string :controller
		t.string :action

      t.timestamps null: false
    end
    add_index :operations, :controller
    add_index :operations, :action
  end
end
