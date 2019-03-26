class RenameColumnToWork < ActiveRecord::Migration[5.2]
  def change
    rename_column :works, :comment, :description
  end
end
