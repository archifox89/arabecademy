class AddUniqueIndexToChapterId < ActiveRecord::Migration
  def change
  	add_index :packages, :chapter_id, :unique => true
  end
end
