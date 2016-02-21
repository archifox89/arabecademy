class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :description
      t.integer :course_id

      t.timestamps null: false
    end
    add_index :chapters, :course_id
  end
end
