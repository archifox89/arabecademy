class AddIndexToChapterIdInPackages < ActiveRecord::Migration
  def change
  	remove_index :packages, :chapter_id
  end
end
