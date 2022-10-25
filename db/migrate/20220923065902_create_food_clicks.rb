class CreateFoodClicks < ActiveRecord::Migration[6.1]
  def change
    create_table :food_clicks do |t|
      t.integer :food_id, null: false

      t.timestamps
    end
  end
end
