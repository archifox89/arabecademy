class AddVideoUrlToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :video_url, :string
  end
end
