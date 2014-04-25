class Outfit < ActiveRecord::Base
  validates :image, presence: true

  belongs_to :user

  mount_uploader :image, ImageUploader

  def self.search(query)
    where(query)
  end
end
