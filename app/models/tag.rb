class Tag < ActiveRecord::Base
  has_many :outfits, through: :outfit_tags
end
