# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :developer

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { only_float: true, greater_than: 0 }
end
