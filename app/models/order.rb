class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :status, inclusion: { in: %w(unpayed paid)}
end
