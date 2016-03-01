class AddPackageIdToPackageChapters < ActiveRecord::Migration
  def change
    add_column :package_chapters, :package_id, :integer
    add_index :package_chapters, :package_id
  end
end
