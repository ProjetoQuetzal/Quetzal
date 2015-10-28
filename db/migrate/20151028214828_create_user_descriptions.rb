class CreateUserDescriptions < ActiveRecord::Migration
  def change
    create_table :user_descriptions do |t|
      t.string  :last_name
      t.string :date_of_birth
      t.string :registration
      t.string :phone_number
      t.string  :address
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
