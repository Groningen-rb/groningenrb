class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.text :description
      t.datetime :starts_at

      t.timestamps
    end
  end
end
