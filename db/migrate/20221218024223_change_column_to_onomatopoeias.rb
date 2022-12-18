class ChangeColumnToOnomatopoeias < ActiveRecord::Migration[6.1]
  def change
    drop_table :onomatopoeia_foods
  end
end
