class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products, foreign_key: :farmer_id
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
