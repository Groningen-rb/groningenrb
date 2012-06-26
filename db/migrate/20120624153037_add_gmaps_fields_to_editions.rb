class AddGmapsFieldsToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :latitude,  :float
    add_column :editions, :longitude, :float
    add_column :editions, :gmaps, :boolean
  end
end
