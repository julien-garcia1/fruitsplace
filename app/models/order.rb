class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  validates :price, presence: true, trough: product
  validates :quantity, presence: true
  validates :total, presence: true
  validates :status, presence: true
end
