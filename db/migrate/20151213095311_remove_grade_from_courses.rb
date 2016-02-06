class RemoveGradeFromCourses < ActiveRecord::Migration
  def change
  	remove_column :courses, :grade, :integer
  end
end
