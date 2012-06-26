class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :edition
      t.references :user
    end
    add_index :attendances, :edition_id
    add_index :attendances, :user_id
  end
end
