class DropEditions < ActiveRecord::Migration
  def up
    drop_table :editions
  end

  def down
    create_table :editions do |t|
      t.text :description
      t.datetime :starts_at
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :location
      t.text :rendered_description
      t.timestamps
    end
  end
end
