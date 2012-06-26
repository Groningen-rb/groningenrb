class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :rendered_body
      t.string :type
      t.integer :author_id
      t.datetime :doors_open_at
      t.string :location
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps, default: false
      t.integer :edition_number

      t.timestamps
    end
  end
end
