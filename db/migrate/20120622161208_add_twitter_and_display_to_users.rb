class AddTwitterAndDisplayToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
    add_column :users, :display, :boolean, default: false
  end
end
