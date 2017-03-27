class FlowerItem < ApplicationRecord
  belongs_to :location
  belongs_to :category
  has_many :lineItem
  mount_uploader :image, ImageUploader
end
