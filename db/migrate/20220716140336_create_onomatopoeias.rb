class CreateOnomatopoeias < ActiveRecord::Migration[6.1]
  def change
    create_table :onomatopoeias do |t|
      t.string :japanese_notation
      t.string :korean_notation

      t.timestamps
    end
  end
end
