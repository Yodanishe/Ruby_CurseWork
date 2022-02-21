class Developer < ApplicationRecord
  has_many :products

  validates :title, presence: true
  validates :description, presence: true
end
