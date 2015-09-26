class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :tag_id
      t.string :staff
      t.string :type
      t.string :model
      t.string :make
      t.string :location
      t.text   :notes
      t.datetime :assigned_date

      t.timestamps null: false
    end
  end
end
