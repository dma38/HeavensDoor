class Customer < ApplicationRecord
  belongs_to :location
  has_many :order
end
