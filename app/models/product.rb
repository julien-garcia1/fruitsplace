class Product < ApplicationRecord
  belongs_to :farmer, class_name: 'User'
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  CAT =  %w(fruits légumes viande épicerie poisson boisson)
  validates :name, presence: true
  validates :category, presence: true
  validates :price, presence: true
  validates :category, inclusion: { in: CAT }
  validates :price, numericality: { greater_than: 0 }
end
