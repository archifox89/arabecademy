class CreatePackageChapters < ActiveRecord::Migration
  def change
    create_table :package_chapters do |t|
      t.integer :course_id
      t.integer :chapter_id

      t.timestamps null: false
    end
    add_index :package_chapters, :course_id
    add_index :package_chapters, :chapter_id
  end
end
