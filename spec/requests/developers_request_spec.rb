# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Developers', type: :request do
  describe 'Request index' do
    subject = 'test'
    it 'assigns developer title' do
      developer = Developer.create(title: 'test')

      expect(subject).to eq(developer.title)
    end
  end
end
