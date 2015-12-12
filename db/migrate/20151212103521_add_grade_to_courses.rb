class AddGradeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :grade, :integer
  end
end
