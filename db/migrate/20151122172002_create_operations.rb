class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
    	t.string :name

      t.timestamps null: false
    end
    add_index :operations, :name
  end
end
