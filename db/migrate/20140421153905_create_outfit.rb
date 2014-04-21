class CreateOutfit < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :image, null: false
      t.text :description
    end
  end
end
