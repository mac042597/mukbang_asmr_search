class CreateOnomatopoeiaFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :onomatopoeia_foods do |t|
      t.references :onomatopoeia, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
