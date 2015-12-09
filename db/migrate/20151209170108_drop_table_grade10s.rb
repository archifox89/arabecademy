class DropTableGrade10s < ActiveRecord::Migration
    def up
    drop_table :grade10s
  end

  def down
    create_table :grade10s
  end
end
