class Customer < ApplicationRecord
  validates :name, presence: true
  validates :phone, length: { is: 12 }
end
