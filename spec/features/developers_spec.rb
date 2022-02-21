# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
describe '#Developer', type: :feature do

  context 'action' do
    it 'new' do
      visit '/developers/new'
      
      fill_in 'developer_title', with: 'test'
      fill_in 'developer_description', with: 'test'
      attach_file('developer_image',
        File.join(Rails.root, 'app/assets/images/valve.jpg'), :visible => false)

      click_button 'Create Developer'
      expect(page).to have_text('Название: test')
    end

    it 'update' do
      developer = create(:developer)
      visit "/developers/#{developer.id}/edit"
  
      fill_in 'developer_title', with: 'update test'
      fill_in 'developer_description', with: 'test'
      click_button 'Update Developer'
      expect(page).to have_text('Название: update test')
    end

    it 'destroy' do
      developer = create(:developer)
      visit "/developers"
      click_button 'Удалить'
      expect(page).to_not have_text('Название: MyString')
    end
    
  end
  
end
