class AddItemstoLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :list, null: false
  end
end
