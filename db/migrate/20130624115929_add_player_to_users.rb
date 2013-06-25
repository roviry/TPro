class AddPlayerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :player, :boolean
  end
end
