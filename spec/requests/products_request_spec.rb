# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products', type: :request do
  describe 'Request index' do
    subject = 'test'
    it 'assigns product name' do
      product = Product.create(title: 'test')

      expect(subject).to eq(product.title)
    end
  end
end
