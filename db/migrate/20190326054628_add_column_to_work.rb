class AddColumnToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :comment, :text
  end
end
