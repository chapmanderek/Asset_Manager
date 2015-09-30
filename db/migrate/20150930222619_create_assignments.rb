class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :staff
      t.string :e_asset_id

      t.timestamps null: false
    end
  end
end
