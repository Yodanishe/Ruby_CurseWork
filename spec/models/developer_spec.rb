require 'rails_helper'

RSpec.describe Developer, type: :model do
  it 'valid title' do
    developer = Developer.new(title: 'test', description: 'test')
    expect(developer).to be_valid
  end
end
