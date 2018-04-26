class AddPrivateToLists < ActiveRecord::Migration[5.1]
  def change
    add_column :lists, :private, :boolean, :default => true
  end
end
