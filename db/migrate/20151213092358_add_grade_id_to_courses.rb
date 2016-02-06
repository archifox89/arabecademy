class AddGradeIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :grade_id, :integer
    add_index :courses, :grade_id
  end
end
