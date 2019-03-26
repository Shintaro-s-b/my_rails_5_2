class CreateWorkCommentRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :work_comment_relations do |t|
      t.references :work
      t.references :comment

      t.timestamps
    end
  end
end
