class AddLocationToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :location, :string
  end
end
