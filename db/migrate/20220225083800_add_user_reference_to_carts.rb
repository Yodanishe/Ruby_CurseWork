# frozen_string_literal: true

class AddUserReferenceToCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :user, index: true
  end
end