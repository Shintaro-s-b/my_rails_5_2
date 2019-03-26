class DropWorkCommentRelation < ActiveRecord::Migration[5.2]
  def change
    drop_table :work_comment_relations
  end
end
