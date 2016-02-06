class AddFieldsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :instructor, :string
    add_column :courses, :chapters_from, :string
    add_column :courses, :chapters_to, :string
  end
end
