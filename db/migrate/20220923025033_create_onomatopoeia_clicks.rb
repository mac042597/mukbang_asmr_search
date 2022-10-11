class CreateOnomatopoeiaClicks < ActiveRecord::Migration[6.1]
  def change
    create_table :onomatopoeia_clicks do |t|
      t.integer :onomatopoeia_id, null: false

      t.timestamps
    end
  end
end
