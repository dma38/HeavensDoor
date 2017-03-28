class Status < ApplicationRecord
  validates :description, presence: true
  has_many :order
end
