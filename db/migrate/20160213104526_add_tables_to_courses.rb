class AddTablesToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :subject_id, :integer
    add_index :courses, :subject_id
    add_column :courses, :instructor_id, :integer
    add_index :courses, :instructor_id
  end
end
