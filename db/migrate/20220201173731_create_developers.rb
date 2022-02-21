class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
