class AddDefaultUserLevelToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :level, :string
    add_column :users, :level, :string, null: false, default: 1
  end
end
