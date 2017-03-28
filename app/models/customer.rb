class Customer < ApplicationRecord
  validates :name, :email, presence: true
  belongs_to :location
  has_many :order
end
