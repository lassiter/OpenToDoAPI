class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :list_id, null: false
      t.string :task, null: false
      t.datetime :due
      t.datetime :expires
      t.boolean :selfdestruct, default: false
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
