class CreateEAssets < ActiveRecord::Migration
  def change
    create_table :e_assets do |t|
      t.string :tag_id
      t.string :staff
      t.string :e_type
      t.string :make
      t.string :location
      t.string :model
      t.text   :notes

      t.timestamps null: false
    end
  end
end
