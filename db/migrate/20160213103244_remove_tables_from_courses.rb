class RemoveTablesFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :instructor
  	remove_column :courses, :subject
  	remove_column :courses, :chapters_from
  	remove_column :courses, :chapters_to
  	remove_column :courses, :price
  end
end
