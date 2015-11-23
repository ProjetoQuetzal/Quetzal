class CreateOperationTeams < ActiveRecord::Migration
  def change
    create_table :operation_teams do |t|

      t.timestamps null: false
    end
  end
end
