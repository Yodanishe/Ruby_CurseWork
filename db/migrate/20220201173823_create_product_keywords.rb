class CreateProductKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :product_keywords do |t|
      t.string :keyword
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
