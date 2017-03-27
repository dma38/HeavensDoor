class Location < ApplicationRecord
  has_many :flowerItem
  has_many :customer
end
