class ChangeDisplayToPublicInUsers < ActiveRecord::Migration
  def up
    remove_column  :users, :display
    add_column     :users, :public, :boolean, default: true
  end

  def down
    remove_column  :users, :public
    add_column     :users, :display, :boolean, default: false
  end
end
