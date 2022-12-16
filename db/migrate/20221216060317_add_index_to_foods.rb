class AddIndexToFoods < ActiveRecord::Migration[6.1]
  def change
    add_index :foods, [:japanese_notation, :korean_notation], unique: true
  end
end
