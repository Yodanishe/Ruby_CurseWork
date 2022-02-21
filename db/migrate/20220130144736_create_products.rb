# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :bytitle
      t.text :content
      t.float :price
      t.integer :old_price
      t.integer :status
      t.string :keywords
      t.string :description
      t.string :img
      t.integer :hit

      t.timestamps
    end
  end
end
