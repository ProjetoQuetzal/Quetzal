class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.belongs_to :user, index:true
      t.belongs_to :team, index:true
      t.belongs_to :role, index:true
      t.timestamps null: false
    end
  end
end
