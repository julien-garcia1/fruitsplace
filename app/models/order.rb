class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :status, inclusion: { in: ["à payer", "payé"]}
end
