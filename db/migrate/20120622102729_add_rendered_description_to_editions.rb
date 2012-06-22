class AddRenderedDescriptionToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :rendered_description, :text
  end
end
