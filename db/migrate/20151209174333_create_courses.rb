class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :period
      t.text :description
      t.string :semester

      t.timestamps null: false
    end
  end
end
