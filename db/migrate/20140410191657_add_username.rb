class AddUsername < ActiveRecord::Migration
  def up
    add_column :users, :username, :string, null: false
  end
  def down
    remove_column :users, :username
  end
end
