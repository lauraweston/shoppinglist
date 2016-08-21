class AddOwnerIdToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :owner_id, :string, null: false
  end
end
