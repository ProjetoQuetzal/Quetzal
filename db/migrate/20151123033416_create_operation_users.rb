class CreateOperationUsers < ActiveRecord::Migration
  def change
    create_table :operation_users do |t|

      t.timestamps null: false
    end
  end
end
