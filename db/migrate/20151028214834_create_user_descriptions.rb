class CreateUserDescriptions < ActiveRecord::Migration
  def change
    create_table :user_descriptions do |t|
      t.string  :name
      t.string  :last_name
      t.integer :date_of_birth
      t.integer :registration
      t.integer :phone_number
      t.string  :address
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
