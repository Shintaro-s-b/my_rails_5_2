class AddColumnToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :work, foreign_key: true
  end
end
