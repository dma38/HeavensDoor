class Status < ApplicationRecord
  validates :description, presence: true
  validates :name, length: {maximum: 50}
  has_many :order
end
