class Product < ApplicationRecord
  belongs_to :farmer, class_name: 'User'
  has_many :orders
end
