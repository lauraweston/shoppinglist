class RemoveOwnerIdDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column_default :lists, :owner_id, nil
  end
end
