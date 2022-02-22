# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :image
      t.float :price
      t.string :status
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
