class CreateWorkTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :work_tag_relations do |t|
      t.references :work
      t.references :tag

      t.timestamps
    end
  end
end
