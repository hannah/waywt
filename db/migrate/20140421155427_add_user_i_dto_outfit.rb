class AddUserIDtoOutfit < ActiveRecord::Migration
  def up
    add_column :outfits, :user_id, :integer, null: false
  end
  def down
    remove_column :outfits, :user_id
  end
end
