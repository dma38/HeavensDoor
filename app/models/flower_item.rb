class FlowerItem < ApplicationRecord
  validates :name, :location, :category,:price, presence: true
  belongs_to :location
  belongs_to :category
  has_many :lineItem
  mount_uploader :image, ImageUploader
end
