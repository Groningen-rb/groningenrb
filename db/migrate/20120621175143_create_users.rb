class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :email
      t.string :location
      t.string :gravatar_id
      t.string :bio
      t.boolean :hireable

      t.timestamps
    end
  end
end
