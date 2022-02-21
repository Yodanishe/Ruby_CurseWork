# frozen_string_literal: true

require 'rails_helper'

describe 'the search process', type: :feature do
  before do
    Product.create(title: 'test')
  end

  it 'search test' do
    visit '/developers'
    fill_in 'Поиск', with: 'test'
    click_button 'Поиск'
    expect(page).to have_current_path('/search?q=test')
    expect(page).to have_text('Результаты поиска')
  end
end
