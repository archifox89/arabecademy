class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.text :notes
      t.string :video_url
      t.integer :chapter_id

      t.timestamps null: false
    end
    add_index :lessons, :chapter_id
  end
end
