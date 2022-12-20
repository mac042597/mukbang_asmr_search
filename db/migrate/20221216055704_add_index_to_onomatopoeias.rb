class AddIndexToOnomatopoeias < ActiveRecord::Migration[6.1]
  def change
    add_index :onomatopoeias, [:japanese_notation, :korean_notation], unique: true
  end
end
