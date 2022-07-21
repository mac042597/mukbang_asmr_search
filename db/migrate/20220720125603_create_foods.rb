class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :japanese_notation, null: false 
      t.string :korean_notation, null: false
      t.integer :category_id

      t.timestamps
    end
  end
end
