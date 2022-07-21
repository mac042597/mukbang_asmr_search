class CreateOnomatopoeias < ActiveRecord::Migration[6.1]
  def change
    create_table :onomatopoeias do |t|
      t.string :japanese_notation, null: false
      t.string :korean_notation, null: false

      t.timestamps
    end
  end
end
