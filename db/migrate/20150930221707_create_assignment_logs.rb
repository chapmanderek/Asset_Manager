class CreateAssignmentLogs < ActiveRecord::Migration
  def change
    create_table :assignment_logs do |t|
      t.string :staff

      t.timestamps null: false
    end
  end
end
