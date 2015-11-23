class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :description

    	t.belongs_to :team, index: true

      t.timestamps null: false
    end
  end
end
