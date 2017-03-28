class Location < ApplicationRecord
  validates :name, :tax_rate, presence: true
  has_many :flowerItem
  has_many :customer
end
