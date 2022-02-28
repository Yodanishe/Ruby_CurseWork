# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
describe '#Product', type: :feature do
  before do
    @developer = create(:developer)
  end

  context 'action' do
    it 'new' do
      visit "/developers/#{@developer.id}/products/new"

      fill_in 'product_title', with: 'MyString'
      fill_in 'product_description', with: 'test'
      fill_in 'product_price', with: 10.0
      attach_file('product_image',
                  File.join(Rails.root, 'app/assets/images/valve.jpg'), visible: false)

      click_button 'Create Product'
      expect(page).to have_text('Название: MyString')
    end

    it 'show' do
      product = create(:product, developer_id: @developer.id)
      subject {get :show, params: {id: product.id}}
      is_expected.to render_template :show
    end

    it 'update' do
      product = create(:product, developer_id: @developer.id)
      visit "/developers/#{@developer.id}/products/#{product.id}/edit"

      fill_in 'product_title', with: 'update test'
      click_button 'Update Product'
      expect(page).to have_text('update test')
    end

    it 'destroy' do
      product = create(:product, title: 'mymegagame', developer_id: @developer.id)
      visit "/developers/#{@developer.id}/"
      click_button 'Удалить'
      expect(page).not_to have_text('mymegagame')
    end
  end
end
