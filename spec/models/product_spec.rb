require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'valid title' do
    developer = Developer.create(title: 'test', description: 'test')
    product = developer.products.create(title: 'test', description: 'test', price: 10.0)
    expect(product).to be_valid
  end
end
