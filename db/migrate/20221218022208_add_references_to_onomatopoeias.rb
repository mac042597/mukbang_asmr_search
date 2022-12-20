class AddReferencesToOnomatopoeias < ActiveRecord::Migration[6.1]
  def change
    add_reference :onomatopoeias, :user, foreign_key: true
  end
end