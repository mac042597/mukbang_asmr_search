class AddRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :integer, default: 0, null: false, limit: 1
  end
end
