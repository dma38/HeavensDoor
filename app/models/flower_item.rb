class FlowerItem < ApplicationRecord
  validates :name, :location, :category,:price, presence: true
  validates :name, :description, length: {maximum: 500}
  validates :price, numericality: { greater_than: 0 }
  belongs_to :location
  belongs_to :category
  has_many :lineItem
  mount_uploader :image, ImageUploader
end
