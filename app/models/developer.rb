class Developer < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
