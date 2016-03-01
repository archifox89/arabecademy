class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :title
      t.string :price
      t.integer :course_id
      t.integer :chapter_id

      t.timestamps null: false
    end
    add_index :packages, :course_id
    add_index :packages, :chapter_id
  end
end
